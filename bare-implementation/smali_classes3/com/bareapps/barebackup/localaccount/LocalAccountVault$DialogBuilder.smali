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

    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    .line 1146
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    .line 1147
    return-void
.end method

.method static synthetic access$2400(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 1134
    iget-object p0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 1134
    iget-object p0, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method private actionText(Ljava/lang/CharSequence;IZ)Landroid/widget/TextView;
    .locals 5

    .line 1294
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1295
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1296
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1297
    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1298
    const-string p1, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1299
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1300
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1301
    const/high16 v2, 0x41800000    # 16.0f

    invoke-direct {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v2

    invoke-virtual {v0, v3, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1302
    const/high16 v2, 0x42980000    # 76.0f

    invoke-direct {p0, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 1303
    if-eqz p3, :cond_0

    .line 1304
    const/16 v2, 0xec

    const/16 v3, 0x40

    const/16 v4, 0x7a

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    .line 1303
    const-string v3, "colorPrimary"

    const v4, 0x1010435

    invoke-direct {p0, v3, v4, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;II)I

    move-result v2

    goto :goto_0

    .line 1304
    :cond_0
    move v2, v1

    :goto_0
    const/high16 v3, 0x41c00000    # 24.0f

    invoke-direct {p0, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v3

    .line 1305
    if-eqz p3, :cond_1

    move p2, v1

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p0, p3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v1

    .line 1303
    :goto_1
    invoke-direct {p0, v2, v3, p2, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1306
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1307
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1308
    return-object v0
.end method

.method private dp(F)I
    .locals 1

    .line 1312
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

.method private roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 1316
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1317
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1318
    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1319
    if-lez p4, :cond_0

    invoke-virtual {v0, p4, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1320
    :cond_0
    return-object v0
.end method

.method private themeColor(Ljava/lang/String;II)I
    .locals 7

    .line 1324
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1325
    const/16 v1, 0x1f

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 1326
    iget-object v4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "attr"

    invoke-virtual {v4, p1, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1327
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, p1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1328
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_0

    .line 1329
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

    .line 1331
    :cond_0
    iget p1, v0, Landroid/util/TypedValue;->type:I

    if-lt p1, v2, :cond_1

    iget p1, v0, Landroid/util/TypedValue;->type:I

    if-gt p1, v1, :cond_1

    .line 1332
    iget p1, v0, Landroid/util/TypedValue;->data:I

    return p1

    .line 1336
    :cond_1
    iget-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1, p2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1337
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_2

    .line 1338
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

    .line 1340
    :cond_2
    iget p1, v0, Landroid/util/TypedValue;->type:I

    if-lt p1, v2, :cond_3

    iget p1, v0, Landroid/util/TypedValue;->type:I

    if-gt p1, v1, :cond_3

    .line 1341
    iget p1, v0, Landroid/util/TypedValue;->data:I

    return p1

    .line 1344
    :cond_3
    return p3
.end method


# virtual methods
.method setCancelable(Z)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1177
    iput-boolean p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    .line 1178
    return-object p0
.end method

.method setMessage(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1155
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->message:Ljava/lang/CharSequence;

    .line 1156
    return-object p0
.end method

.method setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1171
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeLabel:Ljava/lang/CharSequence;

    .line 1172
    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1173
    return-object p0
.end method

.method setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1165
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveLabel:Ljava/lang/CharSequence;

    .line 1166
    iput-object p2, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1167
    return-object p0
.end method

.method setTitle(Ljava/lang/CharSequence;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1150
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->title:Ljava/lang/CharSequence;

    .line 1151
    return-object p0
.end method

.method setView(Landroid/view/View;)Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;
    .locals 0

    .line 1160
    iput-object p1, p0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    .line 1161
    return-object p0
.end method

.method show()V
    .locals 16

    .line 1182
    move-object/from16 v0, p0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1183
    const/16 v2, 0x22

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const-string v3, "dialogBackground"

    const v4, 0x10104e2

    invoke-direct {v0, v3, v4, v2}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;II)I

    move-result v2

    .line 1184
    const/16 v3, 0x40

    const/16 v4, 0x7a

    const/16 v5, 0xec

    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const-string v4, "colorPrimary"

    const v5, 0x1010435

    invoke-direct {v0, v4, v5, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;II)I

    move-result v3

    .line 1185
    const/4 v4, 0x0

    const v5, 0x1010036

    const/4 v6, -0x1

    invoke-direct {v0, v4, v5, v6}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;II)I

    move-result v5

    .line 1186
    const v7, 0x1010038

    const v8, -0x424243

    invoke-direct {v0, v4, v7, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;II)I

    move-result v4

    .line 1187
    const v7, 0x1010031

    const v8, -0xd6d6d7

    const-string v9, "cardBackgroundColor"

    invoke-direct {v0, v9, v7, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->themeColor(Ljava/lang/String;II)I

    move-result v7

    .line 1188
    const/high16 v8, 0x41c00000    # 24.0f

    invoke-direct {v0, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v9

    .line 1190
    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1191
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1192
    invoke-direct {v0, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v8

    const/high16 v12, 0x41800000    # 16.0f

    invoke-direct {v0, v12}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v13

    invoke-virtual {v10, v9, v8, v9, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1193
    const/high16 v8, 0x41b00000    # 22.0f

    invoke-direct {v0, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v9

    const/4 v13, 0x0

    invoke-direct {v0, v2, v9, v13, v13}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1195
    iget-object v2, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->title:Ljava/lang/CharSequence;

    const/4 v9, -0x2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1196
    new-instance v2, Landroid/widget/TextView;

    iget-object v14, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-direct {v2, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1197
    iget-object v14, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1199
    const/high16 v14, 0x41a00000    # 20.0f

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1200
    const-string v14, "sans-serif-medium"

    invoke-static {v14, v13}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1201
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1202
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v2, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1206
    :cond_0
    iget-object v2, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->message:Ljava/lang/CharSequence;

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->message:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1207
    new-instance v2, Landroid/widget/TextView;

    iget-object v15, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-direct {v2, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1208
    iget-object v15, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->message:Ljava/lang/CharSequence;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1210
    const/high16 v15, 0x41700000    # 15.0f

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1211
    const/high16 v15, 0x40400000    # 3.0f

    invoke-direct {v0, v15}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v2, v15, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1212
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1214
    const/high16 v11, 0x41200000    # 10.0f

    invoke-direct {v0, v11}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v11

    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1215
    invoke-virtual {v10, v2, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1218
    :cond_1
    iget-object v2, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 1219
    iget-object v2, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    const/high16 v11, 0x41600000    # 14.0f

    if-eqz v2, :cond_2

    .line 1220
    iget-object v2, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    .line 1221
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1222
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1223
    invoke-virtual {v2, v12}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1224
    invoke-direct {v0, v11}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v4

    const/high16 v5, 0x41500000    # 13.0f

    invoke-direct {v0, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v12

    invoke-direct {v0, v11}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v11

    invoke-direct {v0, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v5

    invoke-virtual {v2, v4, v12, v11, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1225
    const/high16 v4, 0x41400000    # 12.0f

    invoke-direct {v0, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v4

    invoke-direct {v0, v14}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v5

    invoke-direct {v0, v7, v4, v3, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1226
    invoke-virtual {v2, v13}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    goto :goto_0

    .line 1227
    :cond_2
    iget-object v2, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 1228
    iget-object v2, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    .line 1229
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1230
    invoke-direct {v0, v11}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v4

    invoke-direct {v0, v7, v4, v13, v13}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->roundRect(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1227
    :cond_3
    :goto_0
    nop

    .line 1232
    :goto_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1234
    const/high16 v4, 0x41900000    # 18.0f

    invoke-direct {v0, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1235
    iget-object v4, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->customView:Landroid/view/View;

    invoke-virtual {v10, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1238
    :cond_4
    iget-object v2, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveLabel:Ljava/lang/CharSequence;

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    .line 1239
    :cond_5
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1240
    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1241
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1242
    const/16 v4, 0x15

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1243
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1245
    invoke-direct {v0, v8}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1246
    invoke-virtual {v10, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1248
    iget-object v4, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeLabel:Ljava/lang/CharSequence;

    const/high16 v5, 0x42400000    # 48.0f

    if-eqz v4, :cond_6

    .line 1249
    iget-object v4, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->negativeLabel:Ljava/lang/CharSequence;

    invoke-direct {v0, v4, v3, v13}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->actionText(Ljava/lang/CharSequence;IZ)Landroid/widget/TextView;

    move-result-object v3

    .line 1250
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1251
    invoke-direct {v0, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v7

    invoke-direct {v4, v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1252
    const/high16 v7, 0x41000000    # 8.0f

    invoke-direct {v0, v7}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1253
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1254
    new-instance v4, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$1;

    invoke-direct {v4, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$1;-><init>(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1262
    :cond_6
    iget-object v3, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    .line 1263
    iget-object v3, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->positiveLabel:Ljava/lang/CharSequence;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v6, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->actionText(Ljava/lang/CharSequence;IZ)Landroid/widget/TextView;

    move-result-object v3

    .line 1264
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1265
    invoke-direct {v0, v5}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v5

    invoke-direct {v4, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1264
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1266
    new-instance v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;

    invoke-direct {v2, v0, v1}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$2;-><init>(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1275
    :cond_7
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    move-object v4, v10

    invoke-virtual/range {v3 .. v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 1276
    iget-boolean v2, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1277
    iget-boolean v2, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->cancelable:Z

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1278
    new-instance v2, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$3;

    invoke-direct {v2, v0}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder$3;-><init>(Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1283
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1284
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1285
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1286
    iget-object v2, v0, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1287
    const/high16 v3, 0x43f00000    # 480.0f

    invoke-direct {v0, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v3

    .line 1288
    const/high16 v4, 0x42200000    # 40.0f

    invoke-direct {v0, v4}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1289
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v3, 0x438c0000    # 280.0f

    invoke-direct {v0, v3}, Lcom/bareapps/barebackup/localaccount/LocalAccountVault$DialogBuilder;->dp(F)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2, v9}, Landroid/view/Window;->setLayout(II)V

    .line 1291
    :cond_8
    return-void
.end method
