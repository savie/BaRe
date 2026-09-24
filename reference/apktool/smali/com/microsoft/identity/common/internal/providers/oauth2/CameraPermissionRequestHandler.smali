.class public final Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final cameraResource:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final activityResultLauncher:Lcr3;

.field private currentPermissionRequest:Landroid/webkit/PermissionRequest;

.field private isGranted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "android.webkit.resource.VIDEO_CAPTURE"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->cameraResource:[Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/internal/providers/oauth2/WebViewAuthorizationFragment;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ll9;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Llb;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Llb;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/o;->registerForActivityResult(Lh9;Lj9;)Lo9;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcr3;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->activityResultLauncher:Lcr3;

    .line 21
    .line 22
    return-void
.end method

.method public static a(Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;)V
    .locals 2

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "CameraPermissionRequestHandler:showQrPinCameraRationale"

    .line 4
    .line 5
    const-string v1, "User accepted camera permission rationale."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->activityResultLauncher:Lcr3;

    .line 11
    .line 12
    const-string v0, "android.permission.CAMERA"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcr3;->a(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static b(Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;)V
    .locals 2

    .line 1
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 2
    .line 3
    const-string v0, "CameraPermissionRequestHandler:showQrPinCameraRationale"

    .line 4
    .line 5
    const-string v1, "User denied camera permission rationale."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->currentPermissionRequest:Landroid/webkit/PermissionRequest;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/webkit/PermissionRequest;->deny()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->isGranted:Z

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static c(Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;Z)V
    .locals 2

    .line 1
    const-string v0, "Camera permission granted: "

    .line 2
    .line 3
    invoke-static {v0, p1}, Ldj7;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 8
    .line 9
    const-string v1, "CameraPermissionRequestHandler"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->currentPermissionRequest:Landroid/webkit/PermissionRequest;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object p1, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->cameraResource:[Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->isGranted:Z

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/webkit/PermissionRequest;->deny()V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->isGranted:Z

    .line 36
    .line 37
    :cond_1
    return-void
.end method


# virtual methods
.method public final handle(Landroid/webkit/PermissionRequest;Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    array-length v0, v0

    .line 9
    const-string v1, "CameraPermissionRequestHandler:isValid"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v2, :cond_9

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x0

    .line 19
    aget-object v0, v0, v3

    .line 20
    .line 21
    const-string v4, "android.webkit.resource.VIDEO_CAPTURE"

    .line 22
    .line 23
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_9

    .line 28
    .line 29
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->currentPermissionRequest:Landroid/webkit/PermissionRequest;

    .line 30
    .line 31
    sget-object v4, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->cameraResource:[Ljava/lang/String;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    array-length v5, v5

    .line 41
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    array-length v6, v6

    .line 46
    if-eq v5, v6, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v0, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_7

    .line 62
    .line 63
    :goto_0
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 64
    .line 65
    const-string v0, "Valid new request."

    .line 66
    .line 67
    invoke-static {v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->currentPermissionRequest:Landroid/webkit/PermissionRequest;

    .line 71
    .line 72
    iput-boolean v3, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->isGranted:Z

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->activityResultLauncher:Lcr3;

    .line 79
    .line 80
    const-string v1, "android.permission.CAMERA"

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->currentPermissionRequest:Landroid/webkit/PermissionRequest;

    .line 85
    .line 86
    const/4 v5, 0x0

    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    move-object p1, v5

    .line 95
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string v6, "https://login.microsoftonline.com/"

    .line 100
    .line 101
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    sget p1, Lcom/microsoft/identity/common/internal/broker/SdmQrPinManager;->a:I

    .line 108
    .line 109
    const-string p1, "SdmQrPinManager:getPreferredAuthConfig"

    .line 110
    .line 111
    const-string v6, "Broker restrictions manager is not initialized."

    .line 112
    .line 113
    invoke-static {p1, v6}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string p1, "qrpin"

    .line 117
    .line 118
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_4

    .line 123
    .line 124
    invoke-static {p2, v1}, Lzh8;->e(Landroid/content/Context;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_3

    .line 129
    .line 130
    const-string p1, "App level camera permission already granted."

    .line 131
    .line 132
    const-string v0, "CameraPermissionRequestHandler:handleQrPin"

    .line 133
    .line 134
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string p1, "SdmQrPinManager:isCameraConsentSuppressed"

    .line 138
    .line 139
    invoke-static {p1, v6}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string p1, "Camera consent suppress is not enabled."

    .line 143
    .line 144
    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 148
    .line 149
    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    const p2, 0x7f13043a

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    const v0, 0x7f130439

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    new-instance v0, Le21;

    .line 171
    .line 172
    invoke-direct {v0, p0, v3}, Le21;-><init>(Ljava/lang/Object;I)V

    .line 173
    .line 174
    .line 175
    const v1, 0x7f130437

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    new-instance v0, Lf21;

    .line 183
    .line 184
    invoke-direct {v0, p0, v3}, Lf21;-><init>(Ljava/lang/Object;I)V

    .line 185
    .line 186
    .line 187
    const p0, 0x7f130438

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_3
    invoke-virtual {v0, v1}, Lcr3;->a(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_4
    invoke-static {p2, v1}, Lzh8;->e(Landroid/content/Context;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-nez p1, :cond_6

    .line 206
    .line 207
    const-string p1, "App level camera permission already granted, silent grant."

    .line 208
    .line 209
    const-string p2, "CameraPermissionRequestHandler:defaultHandler"

    .line 210
    .line 211
    invoke-static {p2, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->currentPermissionRequest:Landroid/webkit/PermissionRequest;

    .line 215
    .line 216
    if-eqz p1, :cond_5

    .line 217
    .line 218
    invoke-virtual {p1, v4}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iput-boolean v2, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->isGranted:Z

    .line 222
    .line 223
    :cond_5
    return-void

    .line 224
    :cond_6
    invoke-virtual {v0, v1}, Lcr3;->a(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string v0, "Repeated request, permission is granted: "

    .line 231
    .line 232
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->isGranted:Z

    .line 236
    .line 237
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    sget v0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 245
    .line 246
    invoke-static {v1, p2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/CameraPermissionRequestHandler;->isGranted:Z

    .line 250
    .line 251
    if-eqz p0, :cond_8

    .line 252
    .line 253
    invoke-virtual {p1, v4}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_8
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    .line 258
    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_9
    sget p0, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 262
    .line 263
    const-string p0, "Permission request is not for camera."

    .line 264
    .line 265
    invoke-static {v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    .line 269
    .line 270
    .line 271
    :goto_2
    const-string p0, "Permission request is not valid, returning."

    .line 272
    .line 273
    const-string p1, "CameraPermissionRequestHandler:handle"

    .line 274
    .line 275
    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    return-void
.end method
