package com.microsoft.identity.common.internal.providers.oauth2;

import android.app.AlertDialog;
import android.content.Context;
import android.net.Uri;
import android.webkit.PermissionRequest;
import com.microsoft.identity.common.internal.broker.SdmQrPinManager;
import com.microsoft.identity.common.logging.Logger;
import defpackage.cr3;
import defpackage.dj7;
import defpackage.e21;
import defpackage.f21;
import defpackage.l9;
import defpackage.lb;
import defpackage.pe4;
import defpackage.zh8;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CameraPermissionRequestHandler {

    @Deprecated
    private static final String[] cameraResource = {"android.webkit.resource.VIDEO_CAPTURE"};
    private final cr3 activityResultLauncher;
    private PermissionRequest currentPermissionRequest;
    private boolean isGranted;

    public CameraPermissionRequestHandler(WebViewAuthorizationFragment webViewAuthorizationFragment) {
        this.activityResultLauncher = (cr3) webViewAuthorizationFragment.registerForActivityResult(new lb(this), new l9());
    }

    public static void a(CameraPermissionRequestHandler cameraPermissionRequestHandler) {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("CameraPermissionRequestHandler:showQrPinCameraRationale", "User accepted camera permission rationale.");
        cameraPermissionRequestHandler.activityResultLauncher.a("android.permission.CAMERA");
    }

    public static void b(CameraPermissionRequestHandler cameraPermissionRequestHandler) {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("CameraPermissionRequestHandler:showQrPinCameraRationale", "User denied camera permission rationale.");
        PermissionRequest permissionRequest = cameraPermissionRequestHandler.currentPermissionRequest;
        if (permissionRequest != null) {
            permissionRequest.deny();
            cameraPermissionRequestHandler.isGranted = false;
        }
    }

    public static void c(CameraPermissionRequestHandler cameraPermissionRequestHandler, boolean z) {
        String strM = dj7.m("Camera permission granted: ", z);
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("CameraPermissionRequestHandler", strM);
        PermissionRequest permissionRequest = cameraPermissionRequestHandler.currentPermissionRequest;
        if (z) {
            if (permissionRequest != null) {
                permissionRequest.grant(cameraResource);
                cameraPermissionRequestHandler.isGranted = true;
                return;
            }
            return;
        }
        if (permissionRequest != null) {
            permissionRequest.deny();
            cameraPermissionRequestHandler.isGranted = false;
        }
    }

    public final void handle(PermissionRequest permissionRequest, Context context) {
        permissionRequest.getClass();
        if (permissionRequest.getResources().length == 1 && "android.webkit.resource.VIDEO_CAPTURE".equals(permissionRequest.getResources()[0])) {
            PermissionRequest permissionRequest2 = this.currentPermissionRequest;
            String[] strArr = cameraResource;
            if (permissionRequest2 == null || permissionRequest2.getResources().length != permissionRequest.getResources().length || !pe4.d(permissionRequest2.getOrigin(), permissionRequest.getOrigin())) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.info("CameraPermissionRequestHandler:isValid", "Valid new request.");
                this.currentPermissionRequest = permissionRequest;
                this.isGranted = false;
                Uri origin = permissionRequest.getOrigin();
                cr3 cr3Var = this.activityResultLauncher;
                if (origin != null) {
                    PermissionRequest permissionRequest3 = this.currentPermissionRequest;
                    if ("https://login.microsoftonline.com/".equalsIgnoreCase(String.valueOf(permissionRequest3 != null ? permissionRequest3.getOrigin() : null))) {
                        int i2 = SdmQrPinManager.a;
                        com.microsoft.identity.common.java.logging.Logger.warn("SdmQrPinManager:getPreferredAuthConfig", "Broker restrictions manager is not initialized.");
                        if ("qrpin".equals(null)) {
                            if (zh8.e(context, "android.permission.CAMERA") != 0) {
                                cr3Var.a("android.permission.CAMERA");
                                return;
                            }
                            com.microsoft.identity.common.java.logging.Logger.info("CameraPermissionRequestHandler:handleQrPin", "App level camera permission already granted.");
                            com.microsoft.identity.common.java.logging.Logger.warn("SdmQrPinManager:isCameraConsentSuppressed", "Broker restrictions manager is not initialized.");
                            com.microsoft.identity.common.java.logging.Logger.info("CameraPermissionRequestHandler:handleQrPin", "Camera consent suppress is not enabled.");
                            AlertDialog.Builder builder = new AlertDialog.Builder(context);
                            builder.setMessage(R.string.qr_code_rationale_message).setTitle(R.string.qr_code_rationale_header).setCancelable(false).setPositiveButton(R.string.qr_code_rationale_allow, new e21(this, 0)).setNegativeButton(R.string.qr_code_rationale_block, new f21(this, 0));
                            builder.show();
                            return;
                        }
                    }
                }
                if (zh8.e(context, "android.permission.CAMERA") != 0) {
                    cr3Var.a("android.permission.CAMERA");
                    return;
                }
                com.microsoft.identity.common.java.logging.Logger.info("CameraPermissionRequestHandler:defaultHandler", "App level camera permission already granted, silent grant.");
                PermissionRequest permissionRequest4 = this.currentPermissionRequest;
                if (permissionRequest4 != null) {
                    permissionRequest4.grant(strArr);
                    this.isGranted = true;
                    return;
                }
                return;
            }
            String str = "Repeated request, permission is granted: " + this.isGranted;
            int i3 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("CameraPermissionRequestHandler:isValid", str);
            if (this.isGranted) {
                permissionRequest.grant(strArr);
            } else {
                permissionRequest.deny();
            }
        } else {
            int i4 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("CameraPermissionRequestHandler:isValid", "Permission request is not for camera.");
            permissionRequest.deny();
        }
        com.microsoft.identity.common.java.logging.Logger.warn("CameraPermissionRequestHandler:handle", "Permission request is not valid, returning.");
    }
}
