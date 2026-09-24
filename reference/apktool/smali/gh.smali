.class public final Lgh;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lw23;
.implements Lba4;
.implements Lwi8;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgh;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lgh;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lgh;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()I
    .locals 10

    .line 1
    iget-object v0, p0, Lgh;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lgh;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/bumptech/glide/load/data/a;

    .line 8
    .line 9
    iget-object p0, p0, Lgh;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lm35;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    const/4 v4, -0x1

    .line 19
    if-ge v3, v2, :cond_2

    .line 20
    .line 21
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Lx94;

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    :try_start_0
    new-instance v7, Leg6;

    .line 29
    .line 30
    new-instance v8, Ljava/io/FileInputStream;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/a;->a()Landroid/os/ParcelFileDescriptor;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v7, v8, p0}, Leg6;-><init>(Ljava/io/InputStream;Lm35;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    .line 45
    .line 46
    :try_start_1
    invoke-interface {v5, v7, p0}, Lx94;->d(Ljava/io/InputStream;Lm35;)I

    .line 47
    .line 48
    .line 49
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-virtual {v7}, Leg6;->b()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/a;->a()Landroid/os/ParcelFileDescriptor;

    .line 54
    .line 55
    .line 56
    if-eq v5, v4, :cond_0

    .line 57
    .line 58
    return v5

    .line 59
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    move-object v6, v7

    .line 64
    goto :goto_1

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    :goto_1
    if-eqz v6, :cond_1

    .line 67
    .line 68
    invoke-virtual {v6}, Leg6;->b()V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/a;->a()Landroid/os/ParcelFileDescriptor;

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :cond_2
    return v4
.end method

.method public b(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object p0, p0, Lgh;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/bumptech/glide/load/data/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/load/data/a;->a()Landroid/os/ParcelFileDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public c()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public d(Lch;)Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p1, Lch;->a:I

    .line 2
    .line 3
    iget v1, p1, Lch;->c:I

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lgh;->o(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget p1, p1, Lch;->b:I

    .line 13
    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-eq p1, v0, :cond_3

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    if-eq p1, v0, :cond_2

    .line 21
    .line 22
    packed-switch p1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_0
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const-string p0, "true"

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    const-string p0, "false"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_2
    invoke-virtual {p0, v1}, Lgh;->o(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_3
    const/16 p0, 0x10

    .line 49
    .line 50
    invoke-static {p0}, Lly8;->j(I)V

    .line 51
    .line 52
    .line 53
    int-to-long v0, v1

    .line 54
    const-wide v2, 0xffffffffL

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    and-long/2addr v0, v2

    .line 60
    invoke-static {p0, v0, v1}, Ljd4;->L(IJ)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string p1, "@0x"

    .line 65
    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_4
    const/4 p0, 0x0

    .line 72
    return-object p0

    .line 73
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()Loe0;
    .locals 3

    .line 1
    iget-object v0, p0, Lgh;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, " backendName"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    :goto_0
    iget-object v1, p0, Lgh;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ld66;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string v1, " priority"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    new-instance v0, Loe0;

    .line 31
    .line 32
    iget-object v1, p0, Lgh;->a:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    iget-object v2, p0, Lgh;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, [B

    .line 39
    .line 40
    iget-object p0, p0, Lgh;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Ld66;

    .line 43
    .line 44
    invoke-direct {v0, v1, v2, p0}, Loe0;-><init>(Ljava/lang/String;[BLd66;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    const-string p0, "Missing required properties:"

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    return-object p0
.end method

.method public f()V
    .locals 0

    .line 1
    return-void
.end method

.method public g()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 9

    .line 1
    iget-object v0, p0, Lgh;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lgh;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/bumptech/glide/load/data/a;

    .line 8
    .line 9
    iget-object p0, p0, Lgh;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lm35;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lx94;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    :try_start_0
    new-instance v6, Leg6;

    .line 28
    .line 29
    new-instance v7, Ljava/io/FileInputStream;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/a;->a()Landroid/os/ParcelFileDescriptor;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v6, v7, p0}, Leg6;-><init>(Ljava/io/InputStream;Lm35;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    .line 44
    .line 45
    :try_start_1
    invoke-interface {v4, v6}, Lx94;->c(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 46
    .line 47
    .line 48
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-virtual {v6}, Leg6;->b()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/a;->a()Landroid/os/ParcelFileDescriptor;

    .line 53
    .line 54
    .line 55
    sget-object v5, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 56
    .line 57
    if-eq v4, v5, :cond_0

    .line 58
    .line 59
    return-object v4

    .line 60
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    move-object v5, v6

    .line 65
    goto :goto_1

    .line 66
    :catchall_1
    move-exception p0

    .line 67
    :goto_1
    if-eqz v5, :cond_1

    .line 68
    .line 69
    invoke-virtual {v5}, Leg6;->b()V

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {v1}, Lcom/bumptech/glide/load/data/a;->a()Landroid/os/ParcelFileDescriptor;

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_2
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 77
    .line 78
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lgh;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lid4;

    .line 4
    .line 5
    iget-object v0, v0, Lid4;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p0, Lgh;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lca6;

    .line 12
    .line 13
    invoke-interface {v1}, Lea6;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lox1;

    .line 18
    .line 19
    iget-object p0, p0, Lgh;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lca6;

    .line 22
    .line 23
    invoke-interface {p0}, Lea6;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lr87;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance v2, Lnh;

    .line 39
    .line 40
    new-instance v3, Lu10;

    .line 41
    .line 42
    const/16 v4, 0x8

    .line 43
    .line 44
    invoke-direct {v3, p0, v4}, Lu10;-><init>(Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    const/16 v4, 0xd

    .line 48
    .line 49
    invoke-direct {v2, v3, v4}, Lnh;-><init>(Ljava/lang/Object;I)V

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Ll73;->c(Lox1;)Ldv1;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v3, Lek;

    .line 57
    .line 58
    const/16 v4, 0x17

    .line 59
    .line 60
    invoke-direct {v3, v0, v4}, Lek;-><init>(Ljava/lang/Object;I)V

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v2, v1, v3}, Lge;->r(La87;Lnh;Ldv1;Lbt3;)Lic2;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method public getLength()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lgh;->b:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object p0, p0, Lgh;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljava/lang/Class;

    .line 13
    .line 14
    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lgh;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public h(Ly91;Ljava/io/ByteArrayOutputStream;)V
    .locals 3

    .line 1
    new-instance v0, Lv96;

    .line 2
    .line 3
    iget-object v1, p0, Lgh;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/HashMap;

    .line 6
    .line 7
    iget-object v2, p0, Lgh;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/util/HashMap;

    .line 10
    .line 11
    iget-object p0, p0, Lgh;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lfr5;

    .line 14
    .line 15
    invoke-direct {v0, p2, v1, v2, p0}, Lv96;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/HashMap;Ljava/util/HashMap;Lfr5;)V

    .line 16
    .line 17
    .line 18
    const-class p0, Ly91;

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lfr5;

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    invoke-interface {p2, p1, v0}, Lyv2;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p1, Lfw2;

    .line 33
    .line 34
    const-string p2, "No encoder for "

    .line 35
    .line 36
    invoke-static {p0, p2}, Lfz5;->k(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public i(Leh;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object p1, p1, Leh;->b:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lch;

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget p2, p1, Lch;->b:I

    .line 12
    .line 13
    iget v0, p1, Lch;->c:I

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq p2, v1, :cond_1

    .line 17
    .line 18
    const/16 v1, 0x10

    .line 19
    .line 20
    if-eq p2, v1, :cond_0

    .line 21
    .line 22
    const/16 v1, 0x11

    .line 23
    .line 24
    if-eq p2, v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lgh;->d(Lch;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    invoke-static {p0}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_0
    int-to-long p0, v0

    .line 38
    const-wide v0, 0xffffffffL

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    and-long/2addr p0, v0

    .line 44
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_1
    invoke-virtual {p0, v0}, Lgh;->o(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_2
    const/4 p0, 0x0

    .line 59
    return-object p0
.end method

.method public j()Lhh;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lgh;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    invoke-virtual {v0}, Lgh;->k()Ldh;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    :goto_0
    const/16 v16, 0x0

    .line 14
    .line 15
    goto/16 :goto_15

    .line 16
    .line 17
    :cond_0
    iget v4, v2, Ldh;->a:I

    .line 18
    .line 19
    const/4 v5, 0x3

    .line 20
    if-eq v4, v5, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v2, v2, Ldh;->e:I

    .line 24
    .line 25
    const-wide/16 v5, 0x0

    .line 26
    .line 27
    move-wide v10, v5

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v12, 0x0

    .line 30
    const/4 v13, 0x0

    .line 31
    const/4 v14, 0x0

    .line 32
    const/4 v15, 0x0

    .line 33
    :goto_1
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-ge v6, v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lgh;->k()Ldh;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    if-nez v6, :cond_3

    .line 50
    .line 51
    :cond_2
    move-object/from16 v20, v5

    .line 52
    .line 53
    move-wide/from16 v18, v10

    .line 54
    .line 55
    move-object/from16 v24, v12

    .line 56
    .line 57
    const/16 v16, 0x0

    .line 58
    .line 59
    goto/16 :goto_14

    .line 60
    .line 61
    :cond_3
    iget v7, v6, Ldh;->b:I

    .line 62
    .line 63
    iget v8, v6, Ldh;->e:I

    .line 64
    .line 65
    iget v9, v6, Ldh;->a:I

    .line 66
    .line 67
    const/16 v16, 0x0

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    if-eq v9, v3, :cond_1e

    .line 71
    .line 72
    const/16 v7, 0x102

    .line 73
    .line 74
    if-eq v9, v7, :cond_7

    .line 75
    .line 76
    const/16 v3, 0x180

    .line 77
    .line 78
    if-eq v9, v3, :cond_4

    .line 79
    .line 80
    :goto_2
    move/from16 v17, v2

    .line 81
    .line 82
    move-object/from16 v20, v5

    .line 83
    .line 84
    move-wide/from16 v18, v10

    .line 85
    .line 86
    move-object/from16 v24, v12

    .line 87
    .line 88
    goto/16 :goto_c

    .line 89
    .line 90
    :cond_4
    iget v3, v6, Ldh;->f:I

    .line 91
    .line 92
    rem-int/lit8 v6, v3, 0x4

    .line 93
    .line 94
    if-nez v6, :cond_6

    .line 95
    .line 96
    div-int/lit8 v3, v3, 0x4

    .line 97
    .line 98
    new-array v6, v3, [I

    .line 99
    .line 100
    const/4 v7, 0x0

    .line 101
    :goto_3
    if-ge v7, v3, :cond_5

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    aput v9, v6, v7

    .line 108
    .line 109
    add-int/lit8 v7, v7, 0x1

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_5
    iput-object v6, v0, Lgh;->c:Ljava/lang/Object;

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    const-string v0, "Invalid resource map size: "

    .line 116
    .line 117
    invoke-static {v3, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-object v16

    .line 125
    :cond_7
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    invoke-virtual {v0, v7}, Lgh;->o(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-virtual {v0}, Lgh;->m()I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    invoke-virtual {v0}, Lgh;->m()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    const/16 v4, 0x14

    .line 149
    .line 150
    if-lt v9, v4, :cond_1d

    .line 151
    .line 152
    if-lt v3, v4, :cond_1c

    .line 153
    .line 154
    invoke-virtual {v0}, Lgh;->m()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    move/from16 v17, v2

    .line 159
    .line 160
    const/16 v2, 0x2710

    .line 161
    .line 162
    if-gt v4, v2, :cond_1b

    .line 163
    .line 164
    invoke-virtual {v0}, Lgh;->m()I

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Lgh;->m()I

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Lgh;->m()I

    .line 171
    .line 172
    .line 173
    add-int/2addr v6, v9

    .line 174
    move-wide/from16 v18, v10

    .line 175
    .line 176
    int-to-long v9, v6

    .line 177
    move-wide/from16 v20, v9

    .line 178
    .line 179
    int-to-long v9, v4

    .line 180
    move-wide/from16 v22, v9

    .line 181
    .line 182
    int-to-long v9, v3

    .line 183
    mul-long v9, v9, v22

    .line 184
    .line 185
    add-long v9, v9, v20

    .line 186
    .line 187
    move-wide/from16 v20, v9

    .line 188
    .line 189
    int-to-long v9, v8

    .line 190
    cmp-long v2, v20, v9

    .line 191
    .line 192
    if-gtz v2, :cond_1a

    .line 193
    .line 194
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 195
    .line 196
    .line 197
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 198
    .line 199
    invoke-direct {v2, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 200
    .line 201
    .line 202
    const/4 v6, 0x0

    .line 203
    :goto_4
    if-ge v6, v4, :cond_c

    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    invoke-virtual {v0}, Lgh;->m()I

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    move-object/from16 v20, v5

    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    and-int/lit16 v5, v5, 0xff

    .line 239
    .line 240
    move/from16 v21, v6

    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    invoke-virtual {v0, v10}, Lgh;->o(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v22

    .line 250
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    .line 251
    .line 252
    .line 253
    move-result v23

    .line 254
    if-lez v23, :cond_9

    .line 255
    .line 256
    move/from16 v23, v9

    .line 257
    .line 258
    move-object/from16 v24, v12

    .line 259
    .line 260
    :cond_8
    :goto_5
    move-object/from16 v9, v22

    .line 261
    .line 262
    goto :goto_7

    .line 263
    :cond_9
    move/from16 v23, v9

    .line 264
    .line 265
    iget-object v9, v0, Lgh;->c:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v9, [I

    .line 268
    .line 269
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    move-object/from16 v24, v12

    .line 273
    .line 274
    if-ltz v10, :cond_a

    .line 275
    .line 276
    array-length v12, v9

    .line 277
    if-ge v10, v12, :cond_a

    .line 278
    .line 279
    aget v9, v9, v10

    .line 280
    .line 281
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    goto :goto_6

    .line 286
    :cond_a
    move-object/from16 v9, v16

    .line 287
    .line 288
    :goto_6
    if-eqz v9, :cond_8

    .line 289
    .line 290
    invoke-static {}, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->access$getANDROID_ATTR_IDS$cp()Ljava/util/Map;

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v9

    .line 298
    check-cast v9, Ljava/lang/String;

    .line 299
    .line 300
    if-nez v9, :cond_b

    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_b
    :goto_7
    new-instance v10, Lch;

    .line 304
    .line 305
    invoke-direct {v10, v11, v5, v6}, Lch;-><init>(III)V

    .line 306
    .line 307
    .line 308
    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    add-int v9, v23, v3

    .line 312
    .line 313
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 314
    .line 315
    .line 316
    add-int/lit8 v6, v21, 0x1

    .line 317
    .line 318
    move-object/from16 v5, v20

    .line 319
    .line 320
    move-object/from16 v12, v24

    .line 321
    .line 322
    goto :goto_4

    .line 323
    :cond_c
    move-object/from16 v20, v5

    .line 324
    .line 325
    move-object/from16 v24, v12

    .line 326
    .line 327
    new-instance v3, Leh;

    .line 328
    .line 329
    invoke-direct {v3, v7, v2}, Leh;-><init>(Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 330
    .line 331
    .line 332
    const-string v4, "manifest"

    .line 333
    .line 334
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v4

    .line 338
    if-eqz v4, :cond_11

    .line 339
    .line 340
    const-string v4, "versionCode"

    .line 341
    .line 342
    invoke-virtual {v0, v3, v4}, Lgh;->i(Leh;Ljava/lang/String;)Ljava/lang/Long;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    if-nez v4, :cond_d

    .line 347
    .line 348
    move-object/from16 v5, v20

    .line 349
    .line 350
    goto :goto_8

    .line 351
    :cond_d
    move-object v5, v4

    .line 352
    :goto_8
    const-string v4, "versionCodeMajor"

    .line 353
    .line 354
    invoke-virtual {v0, v3, v4}, Lgh;->i(Leh;Ljava/lang/String;)Ljava/lang/Long;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    if-eqz v3, :cond_e

    .line 359
    .line 360
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 361
    .line 362
    .line 363
    move-result-wide v10

    .line 364
    goto :goto_9

    .line 365
    :cond_e
    move-wide/from16 v10, v18

    .line 366
    .line 367
    :goto_9
    const-string v3, "versionName"

    .line 368
    .line 369
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    check-cast v2, Lch;

    .line 374
    .line 375
    if-eqz v2, :cond_f

    .line 376
    .line 377
    invoke-virtual {v0, v2}, Lgh;->d(Lch;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    goto :goto_a

    .line 382
    :cond_f
    move-object/from16 v2, v16

    .line 383
    .line 384
    :goto_a
    if-nez v2, :cond_10

    .line 385
    .line 386
    goto :goto_d

    .line 387
    :cond_10
    move-object v12, v2

    .line 388
    goto/16 :goto_13

    .line 389
    .line 390
    :cond_11
    const-string v3, "application"

    .line 391
    .line 392
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    const-string v4, "name"

    .line 397
    .line 398
    if-eqz v3, :cond_15

    .line 399
    .line 400
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    check-cast v2, Lch;

    .line 405
    .line 406
    if-eqz v2, :cond_12

    .line 407
    .line 408
    invoke-virtual {v0, v2}, Lgh;->d(Lch;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    goto :goto_b

    .line 413
    :cond_12
    move-object/from16 v2, v16

    .line 414
    .line 415
    :goto_b
    if-nez v2, :cond_13

    .line 416
    .line 417
    goto :goto_c

    .line 418
    :cond_13
    move-object v13, v2

    .line 419
    :cond_14
    :goto_c
    move-wide/from16 v10, v18

    .line 420
    .line 421
    move-object/from16 v5, v20

    .line 422
    .line 423
    :goto_d
    move-object/from16 v12, v24

    .line 424
    .line 425
    goto/16 :goto_13

    .line 426
    .line 427
    :cond_15
    const-string v3, "meta-data"

    .line 428
    .line 429
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    if-eqz v3, :cond_19

    .line 434
    .line 435
    if-nez v14, :cond_18

    .line 436
    .line 437
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    check-cast v2, Lch;

    .line 442
    .line 443
    if-eqz v2, :cond_16

    .line 444
    .line 445
    invoke-virtual {v0, v2}, Lgh;->d(Lch;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    goto :goto_e

    .line 450
    :cond_16
    move-object/from16 v2, v16

    .line 451
    .line 452
    :goto_e
    sget-boolean v3, Lg42;->a:Z

    .line 453
    .line 454
    sget-object v3, Lg42;->t:Lgv7;

    .line 455
    .line 456
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    check-cast v3, Ljava/lang/String;

    .line 461
    .line 462
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    if-eqz v2, :cond_17

    .line 467
    .line 468
    goto :goto_f

    .line 469
    :cond_17
    const/4 v14, 0x0

    .line 470
    goto :goto_c

    .line 471
    :cond_18
    :goto_f
    const/4 v14, 0x1

    .line 472
    goto :goto_c

    .line 473
    :cond_19
    const-string v2, "uses-static-library"

    .line 474
    .line 475
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    if-eqz v2, :cond_14

    .line 480
    .line 481
    move-wide/from16 v10, v18

    .line 482
    .line 483
    move-object/from16 v5, v20

    .line 484
    .line 485
    move-object/from16 v12, v24

    .line 486
    .line 487
    const/4 v15, 0x1

    .line 488
    goto/16 :goto_13

    .line 489
    .line 490
    :cond_1a
    const-string v0, "Attributes outside start element chunk"

    .line 491
    .line 492
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    return-object v16

    .line 496
    :cond_1b
    const-string v0, "Too many attributes: "

    .line 497
    .line 498
    invoke-static {v4, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    return-object v16

    .line 506
    :cond_1c
    const-string v0, "Invalid attribute size: "

    .line 507
    .line 508
    invoke-static {v3, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 513
    .line 514
    .line 515
    return-object v16

    .line 516
    :cond_1d
    const-string v0, "Invalid attribute start: "

    .line 517
    .line 518
    invoke-static {v9, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    return-object v16

    .line 526
    :cond_1e
    move/from16 v17, v2

    .line 527
    .line 528
    move-object/from16 v20, v5

    .line 529
    .line 530
    move-wide/from16 v18, v10

    .line 531
    .line 532
    move-object/from16 v24, v12

    .line 533
    .line 534
    add-int/lit8 v2, v7, 0x8

    .line 535
    .line 536
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v0}, Lgh;->l()I

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    invoke-virtual {v0}, Lgh;->l()I

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    invoke-virtual {v0}, Lgh;->l()I

    .line 548
    .line 549
    .line 550
    move-result v4

    .line 551
    invoke-virtual {v0}, Lgh;->l()I

    .line 552
    .line 553
    .line 554
    move-result v5

    .line 555
    invoke-virtual {v0}, Lgh;->l()I

    .line 556
    .line 557
    .line 558
    const v9, 0x186a0

    .line 559
    .line 560
    .line 561
    if-gt v2, v9, :cond_25

    .line 562
    .line 563
    if-gt v3, v9, :cond_24

    .line 564
    .line 565
    iget v9, v6, Ldh;->c:I

    .line 566
    .line 567
    iget v10, v6, Ldh;->d:I

    .line 568
    .line 569
    if-gt v5, v10, :cond_23

    .line 570
    .line 571
    if-gt v9, v5, :cond_23

    .line 572
    .line 573
    int-to-long v11, v2

    .line 574
    move-wide/from16 v21, v11

    .line 575
    .line 576
    int-to-long v11, v3

    .line 577
    add-long v11, v21, v11

    .line 578
    .line 579
    const-wide/16 v21, 0x4

    .line 580
    .line 581
    mul-long v11, v11, v21

    .line 582
    .line 583
    move-wide/from16 v21, v11

    .line 584
    .line 585
    int-to-long v11, v9

    .line 586
    add-long v11, v11, v21

    .line 587
    .line 588
    int-to-long v9, v10

    .line 589
    cmp-long v9, v11, v9

    .line 590
    .line 591
    if-gtz v9, :cond_22

    .line 592
    .line 593
    and-int/lit16 v4, v4, 0x100

    .line 594
    .line 595
    if-eqz v4, :cond_1f

    .line 596
    .line 597
    const/16 v30, 0x1

    .line 598
    .line 599
    goto :goto_10

    .line 600
    :cond_1f
    const/16 v30, 0x0

    .line 601
    .line 602
    :goto_10
    new-array v4, v2, [I

    .line 603
    .line 604
    const/4 v9, 0x0

    .line 605
    :goto_11
    if-ge v9, v2, :cond_20

    .line 606
    .line 607
    invoke-virtual {v0}, Lgh;->l()I

    .line 608
    .line 609
    .line 610
    move-result v10

    .line 611
    aput v10, v4, v9

    .line 612
    .line 613
    add-int/lit8 v9, v9, 0x1

    .line 614
    .line 615
    goto :goto_11

    .line 616
    :cond_20
    const/4 v2, 0x0

    .line 617
    :goto_12
    if-ge v2, v3, :cond_21

    .line 618
    .line 619
    invoke-virtual {v0}, Lgh;->l()I

    .line 620
    .line 621
    .line 622
    add-int/lit8 v2, v2, 0x1

    .line 623
    .line 624
    goto :goto_12

    .line 625
    :cond_21
    new-instance v25, Lfh;

    .line 626
    .line 627
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 628
    .line 629
    .line 630
    move-result-object v2

    .line 631
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 632
    .line 633
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 634
    .line 635
    .line 636
    move-result-object v26

    .line 637
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 638
    .line 639
    .line 640
    add-int v27, v7, v5

    .line 641
    .line 642
    iget v2, v6, Ldh;->e:I

    .line 643
    .line 644
    move/from16 v28, v2

    .line 645
    .line 646
    move-object/from16 v29, v4

    .line 647
    .line 648
    invoke-direct/range {v25 .. v30}, Lfh;-><init>(Ljava/nio/ByteBuffer;II[IZ)V

    .line 649
    .line 650
    .line 651
    move-object/from16 v2, v25

    .line 652
    .line 653
    iput-object v2, v0, Lgh;->b:Ljava/lang/Object;

    .line 654
    .line 655
    goto/16 :goto_c

    .line 656
    .line 657
    :goto_13
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 658
    .line 659
    .line 660
    move/from16 v2, v17

    .line 661
    .line 662
    goto/16 :goto_1

    .line 663
    .line 664
    :cond_22
    const-string v0, "String pool offsets outside chunk"

    .line 665
    .line 666
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    return-object v16

    .line 670
    :cond_23
    const-string v0, "Invalid strings start: "

    .line 671
    .line 672
    invoke-static {v5, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 677
    .line 678
    .line 679
    return-object v16

    .line 680
    :cond_24
    const-string v0, "Too many styles: "

    .line 681
    .line 682
    invoke-static {v3, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 687
    .line 688
    .line 689
    return-object v16

    .line 690
    :cond_25
    const-string v0, "Too many strings: "

    .line 691
    .line 692
    invoke-static {v2, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 697
    .line 698
    .line 699
    return-object v16

    .line 700
    :goto_14
    new-instance v7, Lhh;

    .line 701
    .line 702
    if-eqz v20, :cond_26

    .line 703
    .line 704
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    .line 705
    .line 706
    .line 707
    move-result-wide v8

    .line 708
    move-wide/from16 v10, v18

    .line 709
    .line 710
    move-object/from16 v12, v24

    .line 711
    .line 712
    invoke-direct/range {v7 .. v15}, Lhh;-><init>(JJLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 713
    .line 714
    .line 715
    return-object v7

    .line 716
    :cond_26
    :goto_15
    return-object v16
.end method

.method public k()Ldh;
    .locals 10

    .line 1
    iget-object v0, p0, Lgh;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/16 v3, 0x8

    .line 11
    .line 12
    if-ge v1, v3, :cond_0

    .line 13
    .line 14
    return-object v2

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0}, Lgh;->m()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {p0}, Lgh;->m()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual {p0}, Lgh;->l()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-lt v5, v3, :cond_7

    .line 32
    .line 33
    if-lt p0, v5, :cond_6

    .line 34
    .line 35
    int-to-long v6, v1

    .line 36
    int-to-long v8, p0

    .line 37
    add-long/2addr v6, v8

    .line 38
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    int-to-long v8, v3

    .line 43
    cmp-long v3, v6, v8

    .line 44
    .line 45
    if-gtz v3, :cond_5

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    if-ne v4, v3, :cond_2

    .line 49
    .line 50
    const/16 v3, 0x1c

    .line 51
    .line 52
    if-lt v5, v3, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string p0, "Invalid string pool header size: "

    .line 56
    .line 57
    invoke-static {v5, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-object v2

    .line 65
    :cond_2
    const/16 v3, 0x100

    .line 66
    .line 67
    if-gt v3, v4, :cond_4

    .line 68
    .line 69
    const/16 v3, 0x180

    .line 70
    .line 71
    if-ge v4, v3, :cond_4

    .line 72
    .line 73
    const/16 v3, 0x10

    .line 74
    .line 75
    if-lt v5, v3, :cond_3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    const-string p0, "Invalid XML node header size: "

    .line 79
    .line 80
    invoke-static {v5, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-object v2

    .line 88
    :cond_4
    :goto_0
    add-int v2, v1, v5

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    .line 92
    .line 93
    new-instance v0, Ldh;

    .line 94
    .line 95
    invoke-direct {v0, v4, v1, v5, p0}, Ldh;-><init>(IIII)V

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_5
    const-string p0, "Chunk outside buffer bounds"

    .line 100
    .line 101
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-object v2

    .line 105
    :cond_6
    const-string v0, "Invalid chunk size: "

    .line 106
    .line 107
    invoke-static {p0, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    return-object v2

    .line 115
    :cond_7
    const-string p0, "Invalid chunk header size: "

    .line 116
    .line 117
    invoke-static {v5, p0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-object v2
.end method

.method public l()I
    .locals 4

    .line 1
    iget-object p0, p0, Lgh;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ltz p0, :cond_0

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    int-to-long v0, p0

    .line 13
    const-wide v2, 0xffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    and-long/2addr v0, v2

    .line 19
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "Unsigned chunk value is too large: "

    .line 24
    .line 25
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public m()I
    .locals 1

    .line 1
    iget-object p0, p0, Lgh;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const v0, 0xffff

    .line 13
    .line 14
    .line 15
    and-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lgh;->a:Ljava/lang/Object;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "Null backendName"

    .line 7
    .line 8
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public o(I)Ljava/lang/String;
    .locals 12

    .line 1
    iget-object p0, p0, Lgh;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lfh;

    .line 4
    .line 5
    iget-object v0, p0, Lfh;->f:[Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lfh;->d:[I

    .line 8
    .line 9
    iget v2, p0, Lfh;->c:I

    .line 10
    .line 11
    if-ltz p1, :cond_7

    .line 12
    .line 13
    array-length v3, v1

    .line 14
    if-lt p1, v3, :cond_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    aget-object v3, v0, p1

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    return-object v3

    .line 23
    :cond_1
    iget-object v3, p0, Lfh;->a:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, p0, Lfh;->b:I

    .line 36
    .line 37
    int-to-long v4, v4

    .line 38
    aget v1, v1, p1

    .line 39
    .line 40
    int-to-long v6, v1

    .line 41
    add-long/2addr v4, v6

    .line 42
    int-to-long v1, v2

    .line 43
    cmp-long v6, v4, v1

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    if-gez v6, :cond_6

    .line 47
    .line 48
    long-to-int v4, v4

    .line 49
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 50
    .line 51
    .line 52
    iget-boolean p0, p0, Lfh;->e:Z

    .line 53
    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    sget-object p0, Lfh;->g:Lfh;

    .line 57
    .line 58
    invoke-static {v3}, Lus2;->t(Ljava/nio/ByteBuffer;)I

    .line 59
    .line 60
    .line 61
    invoke-static {v3}, Lus2;->t(Ljava/nio/ByteBuffer;)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    int-to-long v4, v4

    .line 70
    int-to-long v8, p0

    .line 71
    add-long/2addr v4, v8

    .line 72
    const-wide/16 v8, 0x1

    .line 73
    .line 74
    add-long/2addr v4, v8

    .line 75
    cmp-long v1, v4, v1

    .line 76
    .line 77
    if-gtz v1, :cond_2

    .line 78
    .line 79
    new-array p0, p0, [B

    .line 80
    .line 81
    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    .line 85
    .line 86
    .line 87
    sget-object v1, Lf51;->a:Ljava/nio/charset/Charset;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {v1, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    const-string p0, "UTF-8 string outside string pool"

    .line 120
    .line 121
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-object v7

    .line 125
    :cond_3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    const v4, 0xffff

    .line 130
    .line 131
    .line 132
    and-int v5, p0, v4

    .line 133
    .line 134
    const v6, 0x8000

    .line 135
    .line 136
    .line 137
    and-int/2addr v6, p0

    .line 138
    if-eqz v6, :cond_4

    .line 139
    .line 140
    and-int/lit16 p0, p0, 0x7fff

    .line 141
    .line 142
    shl-int/lit8 p0, p0, 0xf

    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    and-int/2addr v4, v5

    .line 149
    or-int v5, p0, v4

    .line 150
    .line 151
    :cond_4
    int-to-long v4, v5

    .line 152
    const-wide/16 v8, 0x2

    .line 153
    .line 154
    mul-long/2addr v4, v8

    .line 155
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    int-to-long v10, p0

    .line 160
    add-long/2addr v10, v4

    .line 161
    add-long/2addr v10, v8

    .line 162
    cmp-long p0, v10, v1

    .line 163
    .line 164
    if-gtz p0, :cond_5

    .line 165
    .line 166
    long-to-int p0, v4

    .line 167
    new-array p0, p0, [B

    .line 168
    .line 169
    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    .line 173
    .line 174
    .line 175
    invoke-static {}, Lorg/swiftapps/swiftbackup/apkreader/ApkManifestParser;->access$getUTF_16_LE$cp()Ljava/nio/charset/Charset;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 184
    .line 185
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {v1, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    :goto_0
    aput-object p0, v0, p1

    .line 209
    .line 210
    return-object p0

    .line 211
    :cond_5
    const-string p0, "UTF-16 string outside string pool"

    .line 212
    .line 213
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    return-object v7

    .line 217
    :cond_6
    const-string p0, "String offset outside string pool"

    .line 218
    .line 219
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    return-object v7

    .line 223
    :cond_7
    :goto_1
    const-string p0, ""

    .line 224
    .line 225
    return-object p0
.end method

.method public p()Llg9;
    .locals 4

    .line 1
    iget-object v0, p0, Lgh;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ltg9;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    iget-object v2, p0, Lgh;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Lkm8;

    .line 11
    .line 12
    if-eqz v2, :cond_8

    .line 13
    .line 14
    iget v3, v0, Ltg9;->a:I

    .line 15
    .line 16
    iget-object v2, v2, Lkm8;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Ld2a;

    .line 19
    .line 20
    iget-object v2, v2, Ld2a;->a:[B

    .line 21
    .line 22
    array-length v2, v2

    .line 23
    if-ne v3, v2, :cond_7

    .line 24
    .line 25
    invoke-virtual {v0}, Ltg9;->a()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lgh;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Ljava/lang/Integer;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string p0, "Cannot create key without ID requirement with parameters with ID requirement"

    .line 39
    .line 40
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_1
    :goto_0
    iget-object v0, p0, Lgh;->a:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Ltg9;

    .line 47
    .line 48
    invoke-virtual {v0}, Ltg9;->a()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Lgh;->c:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Ljava/lang/Integer;

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const-string p0, "Cannot create key with ID requirement with parameters without ID requirement"

    .line 62
    .line 63
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_3
    :goto_1
    iget-object v0, p0, Lgh;->a:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Ltg9;

    .line 70
    .line 71
    iget-object v0, v0, Ltg9;->b:Lsg9;

    .line 72
    .line 73
    sget-object v2, Lsg9;->e:Lsg9;

    .line 74
    .line 75
    if-ne v0, v2, :cond_4

    .line 76
    .line 77
    sget-object v0, Lzs9;->a:Ld2a;

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    sget-object v2, Lsg9;->d:Lsg9;

    .line 81
    .line 82
    if-ne v0, v2, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Lgh;->c:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {v0}, Lzs9;->a(I)Ld2a;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    goto :goto_2

    .line 97
    :cond_5
    sget-object v2, Lsg9;->c:Lsg9;

    .line 98
    .line 99
    if-ne v0, v2, :cond_6

    .line 100
    .line 101
    iget-object v0, p0, Lgh;->c:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-static {v0}, Lzs9;->b(I)Ld2a;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :goto_2
    new-instance v1, Llg9;

    .line 114
    .line 115
    iget-object v2, p0, Lgh;->a:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v2, Ltg9;

    .line 118
    .line 119
    iget-object v3, p0, Lgh;->b:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v3, Lkm8;

    .line 122
    .line 123
    iget-object p0, p0, Lgh;->c:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p0, Ljava/lang/Integer;

    .line 126
    .line 127
    invoke-direct {v1, v2, v3, v0, p0}, Llg9;-><init>(Ltg9;Lkm8;Ld2a;Ljava/lang/Integer;)V

    .line 128
    .line 129
    .line 130
    return-object v1

    .line 131
    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    const-string v0, "Unknown AesGcmSivParameters.Variant: "

    .line 136
    .line 137
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-object v1

    .line 145
    :cond_7
    const-string p0, "Key size mismatch"

    .line 146
    .line 147
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-object v1

    .line 151
    :cond_8
    const-string p0, "Cannot build without parameters and/or key material"

    .line 152
    .line 153
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-object v1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgh;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lwi8;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lwi8;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object p1, p0, Lgh;->b:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method
