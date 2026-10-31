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

    .line 1159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    .line 1160
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    .line 1161
    return-void
.end method

.method private dp(F)I
    .locals 1

    .line 1277
    iget-object v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault;->access$2400(Landroid/app/Activity;F)I

    move-result p1

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

    .line 1235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    return-void
.end method

.method private roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 1281
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1282
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1283
    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1284
    if-lez p4, :cond_0

    invoke-virtual {v0, p4, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1285
    :cond_0
    return-object v0
.end method

.method private showMaterialDialog()Landroid/app/Dialog;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1210
    const-string v0, "com.google.android.material.dialog.MaterialAlertDialogBuilder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1212
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1213
    iget-object v3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1214
    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->title:Ljava/lang/CharSequence;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v4

    const-string v5, "setTitle"

    invoke-direct {p0, v2, v5, v3, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->invokeBuilder(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1215
    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->message:Ljava/lang/CharSequence;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v4

    const-string v5, "setMessage"

    invoke-direct {p0, v2, v5, v3, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->invokeBuilder(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1216
    iget-object v3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1217
    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v4

    const-string v5, "setView"

    invoke-direct {p0, v2, v5, v3, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->invokeBuilder(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1219
    :cond_0
    iget-object v3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveLabel:Ljava/lang/CharSequence;

    const/4 v5, 0x2

    if-eqz v3, :cond_1

    .line 1220
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

    .line 1224
    :cond_1
    iget-object v3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 1225
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

    .line 1229
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

    .line 1230
    const-string v1, "show"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method

.method private showPlatformDialog()Landroid/app/Dialog;
    .locals 3

    .line 1239
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1240
    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1241
    :cond_0
    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->message:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->message:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1242
    :cond_1
    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1243
    :cond_2
    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveLabel:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1244
    :cond_3
    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeLabel:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1245
    :cond_4
    iget-boolean v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1246
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private styleCustomView()V
    .locals 9

    .line 1250
    const v0, 0x1010031

    const v1, -0xd6d6d7

    const-string v2, "colorSurfaceContainerHigh"

    invoke-direct {p0, v2, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;II)I

    move-result v0

    .line 1251
    const v1, 0x1010030

    const v2, -0x888889

    const-string v3, "colorOutline"

    invoke-direct {p0, v3, v1, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;II)I

    move-result v1

    .line 1252
    const v2, 0x1010036

    const/4 v3, -0x1

    const-string v4, "colorOnSurface"

    invoke-direct {p0, v4, v2, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;II)I

    move-result v2

    .line 1253
    const v3, 0x101009a

    const v4, -0x424243

    const/4 v5, 0x0

    invoke-direct {p0, v5, v3, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;II)I

    move-result v3

    .line 1254
    iget-object v4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    instance-of v4, v4, Landroid/widget/EditText;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x41600000    # 14.0f

    if-eqz v4, :cond_0

    .line 1255
    iget-object v4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    check-cast v4, Landroid/widget/EditText;

    .line 1256
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1257
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1258
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1259
    invoke-direct {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v3

    invoke-direct {p0, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v7

    invoke-direct {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v2

    invoke-direct {p0, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v6

    invoke-virtual {v4, v3, v7, v2, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1260
    const/high16 v2, 0x41400000    # 12.0f

    invoke-direct {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v2

    invoke-direct {p0, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v3

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1261
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 1262
    const/high16 v0, 0x42580000    # 54.0f

    invoke-direct {p0, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setMinHeight(I)V

    .line 1263
    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_0

    .line 1264
    :cond_0
    iget-object v3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 1265
    iget-object v3, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    .line 1266
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1267
    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1268
    const/16 v2, 0x11

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1269
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v4

    const/high16 v7, 0x41900000    # 18.0f

    invoke-direct {p0, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v8

    invoke-direct {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v2

    invoke-direct {p0, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v7

    invoke-virtual {v3, v4, v8, v2, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1270
    invoke-direct {p0, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v2

    invoke-direct {p0, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v4

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1271
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 1272
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_1

    .line 1264
    :cond_1
    :goto_0
    nop

    .line 1274
    :goto_1
    return-void
.end method

.method private themeColor(Ljava/lang/String;II)I
    .locals 7

    .line 1289
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1290
    const/16 v1, 0x1f

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 1291
    iget-object v4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "attr"

    invoke-virtual {v4, p1, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1292
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, p1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1293
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_0

    .line 1294
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

    .line 1296
    :cond_0
    iget p1, v0, Landroid/util/TypedValue;->type:I

    if-lt p1, v2, :cond_1

    iget p1, v0, Landroid/util/TypedValue;->type:I

    if-gt p1, v1, :cond_1

    .line 1297
    iget p1, v0, Landroid/util/TypedValue;->data:I

    return p1

    .line 1301
    :cond_1
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, p2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1302
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_2

    .line 1303
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

    .line 1305
    :cond_2
    iget p1, v0, Landroid/util/TypedValue;->type:I

    if-lt p1, v2, :cond_3

    iget p1, v0, Landroid/util/TypedValue;->type:I

    if-gt p1, v1, :cond_3

    .line 1306
    iget p1, v0, Landroid/util/TypedValue;->data:I

    return p1

    .line 1309
    :cond_3
    return p3
.end method


# virtual methods
.method setCancelable(Z)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1191
    iput-boolean p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    .line 1192
    return-object p0
.end method

.method setMessage(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->message:Ljava/lang/CharSequence;

    .line 1170
    return-object p0
.end method

.method setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1185
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeLabel:Ljava/lang/CharSequence;

    .line 1186
    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1187
    return-object p0
.end method

.method setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1179
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveLabel:Ljava/lang/CharSequence;

    .line 1180
    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1181
    return-object p0
.end method

.method setTitle(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1164
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->title:Ljava/lang/CharSequence;

    .line 1165
    return-object p0
.end method

.method setView(Landroid/view/View;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1174
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    .line 1175
    return-object p0
.end method

.method show()V
    .locals 2

    .line 1196
    invoke-direct {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->styleCustomView()V

    .line 1199
    :try_start_0
    invoke-direct {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->showMaterialDialog()Landroid/app/Dialog;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    goto :goto_0

    .line 1200
    :catchall_0
    move-exception v0

    .line 1201
    invoke-direct {p0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->showPlatformDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 1203
    :goto_0
    if-eqz v0, :cond_0

    .line 1204
    iget-boolean v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1205
    iget-boolean v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1207
    :cond_0
    return-void
.end method
