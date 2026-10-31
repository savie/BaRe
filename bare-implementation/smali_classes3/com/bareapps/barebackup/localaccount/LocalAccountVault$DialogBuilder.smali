.class final Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
.super Ljava/lang/Object;
.source "LocalAccountVault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bareapps/barebackup/localaccount/LocalAccountVault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DialogBuilder"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private cancelable:Z

.field private customView:Landroid/view/View;

.field private message:Ljava/lang/CharSequence;

.field private negativeLabel:Ljava/lang/CharSequence;

.field private negativeListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveLabel:Ljava/lang/CharSequence;

.field private positiveListener:Landroid/content/DialogInterface$OnClickListener;

.field private title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    .line 1145
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    .line 1146
    return-void
.end method

.method private dp(F)I
    .locals 1

    .line 1261
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private invokeBuilder(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    return-void
.end method

.method private roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 1265
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1266
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1267
    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1268
    if-lez p4, :cond_0

    invoke-virtual {v0, p4, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1269
    :cond_0
    return-object v0
.end method

.method private showMaterialDialog()Landroid/app/AlertDialog;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1195
    const-string v0, "com.google.android.material.dialog.MaterialAlertDialogBuilder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1197
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1198
    iget-object v3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1199
    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->title:Ljava/lang/CharSequence;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v4

    const-string v5, "setTitle"

    invoke-direct {p0, v2, v5, v3, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->invokeBuilder(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1200
    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->message:Ljava/lang/CharSequence;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v4

    const-string v5, "setMessage"

    invoke-direct {p0, v2, v5, v3, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->invokeBuilder(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1201
    iget-object v3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1202
    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v4

    const-string v5, "setView"

    invoke-direct {p0, v2, v5, v3, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->invokeBuilder(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1204
    :cond_0
    iget-object v3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveLabel:Ljava/lang/CharSequence;

    const/4 v5, 0x2

    if-eqz v3, :cond_1

    .line 1205
    new-array v3, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/CharSequence;

    aput-object v6, v3, v4

    const-class v6, Landroid/content/DialogInterface$OnClickListener;

    aput-object v6, v3, v1

    iget-object v6, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveLabel:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveListener:Landroid/content/DialogInterface$OnClickListener;

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v6, v8, v4

    aput-object v7, v8, v1

    const-string v6, "setPositiveButton"

    invoke-direct {p0, v2, v6, v3, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->invokeBuilder(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1209
    :cond_1
    iget-object v3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 1210
    new-array v3, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/CharSequence;

    aput-object v6, v3, v4

    const-class v6, Landroid/content/DialogInterface$OnClickListener;

    aput-object v6, v3, v1

    iget-object v6, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeLabel:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeListener:Landroid/content/DialogInterface$OnClickListener;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v4

    aput-object v7, v5, v1

    const-string v6, "setNegativeButton"

    invoke-direct {p0, v2, v6, v3, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->invokeBuilder(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1214
    :cond_2
    new-array v3, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    iget-boolean v5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v4

    const-string v5, "setCancelable"

    invoke-direct {p0, v2, v5, v3, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->invokeBuilder(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1215
    const-string v1, "show"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    return-object v0
.end method

.method private showPlatformDialog()Landroid/app/AlertDialog;
    .locals 3

    .line 1224
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1225
    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1226
    :cond_0
    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->message:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->message:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1227
    :cond_1
    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1228
    :cond_2
    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveLabel:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1229
    :cond_3
    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeLabel:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1230
    :cond_4
    iget-boolean v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1231
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private styleCustomView()V
    .locals 12

    .line 1235
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/EditText;

    const/4 v1, -0x1

    const v2, 0x1010036

    const-string v3, "colorOnSurface"

    const v4, -0xd6d6d7

    const v5, 0x1010031

    const-string v6, "cardBackgroundColor"

    const/4 v7, 0x0

    const/high16 v8, 0x41600000    # 14.0f

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    .line 1237
    const v9, 0x1010435

    const v10, -0x13bf86

    const-string v11, "colorPrimary"

    invoke-direct {p0, v11, v9, v10}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;II)I

    move-result v9

    .line 1238
    invoke-direct {p0, v6, v5, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;II)I

    move-result v4

    .line 1239
    invoke-direct {p0, v3, v2, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;II)I

    move-result v1

    .line 1240
    const v2, 0x101009a

    const v3, -0x424243

    const/4 v5, 0x0

    invoke-direct {p0, v5, v2, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;II)I

    move-result v2

    .line 1241
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1242
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1243
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1244
    invoke-direct {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v2

    invoke-direct {p0, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v1

    invoke-direct {p0, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v1, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1245
    const/high16 v1, 0x41400000    # 12.0f

    invoke-direct {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v2

    invoke-direct {p0, v4, v1, v9, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1246
    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 1247
    const/high16 v1, 0x42500000    # 52.0f

    invoke-direct {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinHeight(I)V

    goto :goto_0

    .line 1248
    :cond_0
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1249
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 1250
    invoke-direct {p0, v6, v5, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;II)I

    move-result v4

    .line 1251
    invoke-direct {p0, v3, v2, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;II)I

    move-result v1

    .line 1252
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1253
    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1254
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1255
    const/high16 v1, 0x41900000    # 18.0f

    invoke-direct {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v5

    invoke-direct {p0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v5, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1256
    invoke-direct {p0, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v1

    invoke-direct {p0, v4, v1, v7, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1248
    :cond_1
    :goto_0
    nop

    .line 1258
    :goto_1
    return-void
.end method

.method private themeColor(Ljava/lang/String;II)I
    .locals 7

    .line 1273
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1274
    const/16 v1, 0x1f

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 1275
    iget-object v4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "attr"

    invoke-virtual {v4, p1, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1276
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, p1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1277
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_0

    .line 1278
    :try_start_0
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 1280
    :cond_0
    iget p1, v0, Landroid/util/TypedValue;->type:I

    if-lt p1, v2, :cond_1

    iget p1, v0, Landroid/util/TypedValue;->type:I

    if-gt p1, v1, :cond_1

    .line 1281
    iget p1, v0, Landroid/util/TypedValue;->data:I

    return p1

    .line 1285
    :cond_1
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, p2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1286
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_2

    .line 1287
    :try_start_1
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    :catchall_1
    move-exception p1

    .line 1289
    :cond_2
    iget p1, v0, Landroid/util/TypedValue;->type:I

    if-lt p1, v2, :cond_3

    iget p1, v0, Landroid/util/TypedValue;->type:I

    if-gt p1, v1, :cond_3

    .line 1290
    iget p1, v0, Landroid/util/TypedValue;->data:I

    return p1

    .line 1293
    :cond_3
    return p3
.end method


# virtual methods
.method setCancelable(Z)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1176
    iput-boolean p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    .line 1177
    return-object p0
.end method

.method setMessage(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1154
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->message:Ljava/lang/CharSequence;

    .line 1155
    return-object p0
.end method

.method setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1170
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeLabel:Ljava/lang/CharSequence;

    .line 1171
    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1172
    return-object p0
.end method

.method setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1164
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveLabel:Ljava/lang/CharSequence;

    .line 1165
    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1166
    return-object p0
.end method

.method setTitle(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1149
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->title:Ljava/lang/CharSequence;

    .line 1150
    return-object p0
.end method

.method setView(Landroid/view/View;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1159
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    .line 1160
    return-object p0
.end method

.method show()V
    .locals 2

    .line 1181
    invoke-direct {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->styleCustomView()V

    .line 1184
    :try_start_0
    invoke-direct {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->showMaterialDialog()Landroid/app/AlertDialog;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1187
    goto :goto_0

    .line 1185
    :catchall_0
    move-exception v0

    .line 1186
    invoke-direct {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->showPlatformDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1188
    :goto_0
    if-eqz v0, :cond_0

    .line 1189
    iget-boolean v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1190
    iget-boolean v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1192
    :cond_0
    return-void
.end method
