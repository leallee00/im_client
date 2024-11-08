package com.commim.xiliao

import android.content.Intent
import android.provider.MediaStore
import com.king.zxing.util.CodeUtils
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.util.concurrent.Executors

class MainActivity : FlutterActivity() {

    companion object {
        private const val REQUEST_CODE_PHOTO = 0x01
    }

    var methodChannel: MethodChannel? = null
    private val executor = Executors.newSingleThreadExecutor()

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        methodChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "com.laiwang")
        methodChannel?.setMethodCallHandler { call, result ->
            when (call.method) {
                "parseQRCode" -> {
                    val pickIntent =
                        Intent(Intent.ACTION_PICK, MediaStore.Images.Media.EXTERNAL_CONTENT_URI)
                    pickIntent.setDataAndType(
                        MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "image/*"
                    )
                    startActivityForResult(pickIntent, REQUEST_CODE_PHOTO)
                }
            }
        }
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (resultCode == RESULT_OK && null != data) {
            when (requestCode) {
                REQUEST_CODE_PHOTO -> {
                    parseQRCode(data)
                }
            }
        }
    }

    private fun parseQRCode(data: Intent) {
        try {
            val bitmap = MediaStore.Images.Media.getBitmap(
                contentResolver, data.data
            )
            asyncThread {
                val result = CodeUtils.parseCode(bitmap)
                runOnUiThread {
                    val dataMap = mapOf<String, Any>(
                        "code" to 200,
                        "error" to "",
                        "data" to result,
                    )
                    methodChannel?.invokeMethod("onQRCodeResponse", dataMap)
                }
            }
        } catch (e: Exception) {
            e.printStackTrace()
            val dataMap = mapOf<String, Any>(
                "code" to 403,
                "error" to "",
                "data" to "",
            )
            methodChannel?.invokeMethod("onQRCodeResponse", dataMap)
        }
    }

    private fun asyncThread(runnable: Runnable) {
        executor.execute(runnable)
    }

}
