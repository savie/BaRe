.class public final Lu00;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;
.implements Lba4;
.implements Lw23;
.implements Ln59;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lu00;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 27
    iput p1, p0, Lu00;->a:I

    iput-object p2, p0, Lu00;->b:Ljava/lang/Object;

    iput-object p3, p0, Lu00;->c:Ljava/lang/Object;

    iput-object p4, p0, Lu00;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lu00;->a:I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p3, p0, Lu00;->c:Ljava/lang/Object;

    .line 35
    iput-object p2, p0, Lu00;->b:Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lu00;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lu00;->a:I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls02;

    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lu00;->c:Ljava/lang/Object;

    iput-object v0, p0, Lu00;->d:Ljava/lang/Object;

    iput-object p1, p0, Lu00;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lke;Lj69;Lyf1;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lu00;->a:I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu00;->b:Ljava/lang/Object;

    iput-object p3, p0, Lu00;->c:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lu00;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ly65;Ljava/util/ArrayList;Lm35;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lu00;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v0, "Argument must not be null"

    .line 8
    .line 9
    invoke-static {p3, v0}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p3, p0, Lu00;->c:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {p2, v0}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lu00;->d:Ljava/lang/Object;

    .line 18
    .line 19
    new-instance p2, Lrb;

    .line 20
    .line 21
    invoke-direct {p2, p1, p3}, Lrb;-><init>(Ljava/io/InputStream;Lm35;)V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lu00;->b:Ljava/lang/Object;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lu00;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lu00;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lrb;

    .line 8
    .line 9
    iget-object v1, v1, Lrb;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Leg6;

    .line 12
    .line 13
    invoke-virtual {v1}, Leg6;->reset()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lu00;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lm35;

    .line 19
    .line 20
    invoke-static {v0, v1, p0}, Lpe4;->q(Ljava/util/List;Ljava/io/InputStream;Lm35;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public b(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object p0, p0, Lu00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lrb;

    .line 4
    .line 5
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Leg6;

    .line 8
    .line 9
    invoke-virtual {p0}, Leg6;->reset()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public varargs c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu00;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1, p3}, Lu00;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const-string p3, "\n"

    .line 14
    .line 15
    invoke-static {p1, p3}, Lfz5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance p3, Ljava/io/StringWriter;

    .line 20
    .line 21
    invoke-direct {p3}, Ljava/io/StringWriter;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v0, Ljava/io/PrintWriter;

    .line 25
    .line 26
    invoke-direct {v0, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :cond_0
    iget-object p2, p0, Lu00;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p2, Lub;

    .line 46
    .line 47
    iget-object p0, p0, Lu00;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    const/4 p3, 0x1

    .line 55
    invoke-virtual {p2, p3, p0, p1}, Lub;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v1}, Lu00;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, "\n"

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    new-instance p1, Ljava/io/StringWriter;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/io/PrintWriter;

    .line 27
    .line 28
    invoke-direct {v1, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p2, p0, Lu00;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p2, Lub;

    .line 48
    .line 49
    iget-object p0, p0, Lu00;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x4

    .line 57
    invoke-virtual {p2, v0, p0, p1}, Lub;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public e()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lu00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lub;

    .line 4
    .line 5
    iget p0, p0, Lub;->a:I

    .line 6
    .line 7
    invoke-static {p0}, Ldj7;->A(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-gtz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object p0, p0, Lu00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lrb;

    .line 4
    .line 5
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Leg6;

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Leg6;->a:[B

    .line 11
    .line 12
    array-length v0, v0

    .line 13
    iput v0, p0, Leg6;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v0
.end method

.method public g()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 2

    .line 1
    iget-object v0, p0, Lu00;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lu00;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lrb;

    .line 8
    .line 9
    iget-object v1, v1, Lrb;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Leg6;

    .line 12
    .line 13
    invoke-virtual {v1}, Leg6;->reset()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lu00;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lm35;

    .line 19
    .line 20
    invoke-static {v0, v1, p0}, Lpe4;->s(Ljava/util/List;Ljava/io/InputStream;Lm35;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lu00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lca6;

    .line 4
    .line 5
    invoke-interface {v0}, Lea6;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lox1;

    .line 10
    .line 11
    iget-object v1, p0, Lu00;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lca6;

    .line 14
    .line 15
    invoke-interface {v1}, Lea6;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, La48;

    .line 20
    .line 21
    iget-object p0, p0, Lu00;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lca6;

    .line 24
    .line 25
    invoke-interface {p0}, Lea6;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lfb2;

    .line 30
    .line 31
    new-instance v2, Lka7;

    .line 32
    .line 33
    invoke-direct {v2, v0, v1, p0}, Lka7;-><init>(Lox1;La48;Lfb2;)V

    .line 34
    .line 35
    .line 36
    return-object v2
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lu00;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lu00;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lu00;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public h(Lf59;)V
    .locals 3

    .line 1
    check-cast p1, Lb69;

    .line 2
    .line 3
    iget-object v0, p0, Lu00;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lj69;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lj69;->G:Z

    .line 9
    .line 10
    iget-object p1, p1, Lb69;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p1}, Lly8;->e(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Lj69;->b:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p1, p0, Lu00;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lke;

    .line 20
    .line 21
    iget-object p1, p1, Lke;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Lg59;

    .line 24
    .line 25
    new-instance v1, Lvq;

    .line 26
    .line 27
    iget-object v2, p0, Lu00;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Lyf1;

    .line 30
    .line 31
    invoke-direct {v1, p0, v2, p0}, Lvq;-><init>(Lu00;Lyf1;Lu00;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object p0, p1, Lg59;->a:Ld59;

    .line 38
    .line 39
    iget-object p1, p1, Lg59;->f:Ljava/lang/String;

    .line 40
    .line 41
    const-string v2, "/verifyAssertion"

    .line 42
    .line 43
    invoke-virtual {p0, v2, p1}, Lao;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v2, Lk69;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lao;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Lxt1;

    .line 55
    .line 56
    invoke-static {p1, v0, v1, v2, p0}, Lms8;->U(Ljava/lang/String;Le59;Ln59;Lf59;Lxt1;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lu00;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/String;

    .line 4
    .line 5
    array-length v0, p2

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    if-nez p0, :cond_1

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    const-string p2, " - "

    .line 16
    .line 17
    invoke-static {p0, p2, p1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lu00;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lu00;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lub;

    .line 11
    .line 12
    iget-object p0, p0, Lu00;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-virtual {v0, v1, p0, p1}, Lub;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public k()Lhu9;
    .locals 4

    .line 1
    iget-object v0, p0, Lu00;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lmu9;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_9

    .line 7
    .line 8
    iget-object v2, p0, Lu00;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Lkm8;

    .line 11
    .line 12
    if-eqz v2, :cond_9

    .line 13
    .line 14
    iget v3, v0, Lmu9;->a:I

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
    if-ne v3, v2, :cond_8

    .line 24
    .line 25
    invoke-virtual {v0}, Lmu9;->a()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lu00;->d:Ljava/lang/Object;

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
    iget-object v0, p0, Lu00;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lmu9;

    .line 47
    .line 48
    invoke-virtual {v0}, Lmu9;->a()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    iget-object v0, p0, Lu00;->d:Ljava/lang/Object;

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
    iget-object v0, p0, Lu00;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lmu9;

    .line 70
    .line 71
    iget-object v0, v0, Lmu9;->c:Lku9;

    .line 72
    .line 73
    sget-object v2, Lku9;->e:Lku9;

    .line 74
    .line 75
    if-ne v0, v2, :cond_4

    .line 76
    .line 77
    sget-object v0, Lzs9;->a:Ld2a;

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    sget-object v2, Lku9;->d:Lku9;

    .line 81
    .line 82
    if-eq v0, v2, :cond_7

    .line 83
    .line 84
    sget-object v2, Lku9;->c:Lku9;

    .line 85
    .line 86
    if-ne v0, v2, :cond_5

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    sget-object v2, Lku9;->b:Lku9;

    .line 90
    .line 91
    if-ne v0, v2, :cond_6

    .line 92
    .line 93
    iget-object v0, p0, Lu00;->d:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-static {v0}, Lzs9;->b(I)Ld2a;

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    const-string v0, "Unknown HmacParameters.Variant: "

    .line 110
    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-object v1

    .line 119
    :cond_7
    :goto_2
    iget-object v0, p0, Lu00;->d:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-static {v0}, Lzs9;->a(I)Ld2a;

    .line 128
    .line 129
    .line 130
    :goto_3
    new-instance v0, Lhu9;

    .line 131
    .line 132
    iget-object v1, p0, Lu00;->b:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v1, Lmu9;

    .line 135
    .line 136
    iget-object v2, p0, Lu00;->c:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v2, Lkm8;

    .line 139
    .line 140
    iget-object p0, p0, Lu00;->d:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p0, Ljava/lang/Integer;

    .line 143
    .line 144
    invoke-direct {v0, v1, v2, p0}, Lhu9;-><init>(Lmu9;Lkm8;Ljava/lang/Integer;)V

    .line 145
    .line 146
    .line 147
    return-object v0

    .line 148
    :cond_8
    const-string p0, "Key size mismatch"

    .line 149
    .line 150
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-object v1

    .line 154
    :cond_9
    const-string p0, "Cannot build without parameters and/or key material"

    .line 155
    .line 156
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-object v1
.end method

.method public l(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ls02;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lu00;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ls02;

    .line 9
    .line 10
    iput-object v0, v1, Ls02;->c:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object v0, p0, Lu00;->d:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p1, v0, Ls02;->b:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p2, v0, Ls02;->a:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lu00;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/16 v1, 0x20

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lu00;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x7b

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lu00;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Ls02;

    .line 33
    .line 34
    iget-object p0, p0, Ls02;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Ls02;

    .line 37
    .line 38
    const-string v1, ""

    .line 39
    .line 40
    :goto_0
    if-eqz p0, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Ls02;->b:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Ls02;->a:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x3d

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_0
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    add-int/lit8 v2, v2, -0x1

    .line 86
    .line 87
    const/4 v3, 0x1

    .line 88
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :goto_1
    iget-object p0, p0, Ls02;->c:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p0, Ls02;

    .line 98
    .line 99
    const-string v1, ", "

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    const/16 p0, 0x7d

    .line 103
    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public zza(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lzv1;->t(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lu00;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lyf1;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lyf1;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
