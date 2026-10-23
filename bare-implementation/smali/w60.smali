.class public final Lw60;
.super Ljm1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic g:Lx60;


# direct methods
.method public constructor <init>(Lx60;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw60;->g:Lx60;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(II)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lw60;->g:Lx60;

    .line 2
    .line 3
    iget-object v0, p0, Lx60;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lx60;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lx60;->d:Lz60;

    .line 20
    .line 21
    iget-object p0, p0, Lz60;->b:Lkm8;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget p0, Lorg/swiftapps/swiftbackup/settings/LicensesActivity;->L:I

    .line 27
    .line 28
    check-cast p1, Lnt4;

    .line 29
    .line 30
    check-cast p2, Lnt4;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lnt4;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_0
    if-nez p1, :cond_1

    .line 38
    .line 39
    if-nez p2, :cond_1

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_1
    invoke-static {}, Ld6;->n()V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return p0
.end method

.method public final c(II)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lw60;->g:Lx60;

    .line 2
    .line 3
    iget-object v0, p0, Lx60;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lx60;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lx60;->d:Lz60;

    .line 20
    .line 21
    iget-object p0, p0, Lz60;->b:Lkm8;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget p0, Lorg/swiftapps/swiftbackup/settings/LicensesActivity;->L:I

    .line 27
    .line 28
    check-cast p1, Lnt4;

    .line 29
    .line 30
    check-cast p2, Lnt4;

    .line 31
    .line 32
    iget-object p0, p1, Lnt4;->a:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p1, p2, Lnt4;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_0
    if-nez p1, :cond_1

    .line 42
    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public final n(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lw60;->g:Lx60;

    .line 2
    .line 3
    iget-object v0, p0, Lx60;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lx60;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lx60;->d:Lz60;

    .line 20
    .line 21
    iget-object p0, p0, Lz60;->b:Lkm8;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget p0, Lorg/swiftapps/swiftbackup/settings/LicensesActivity;->L:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-static {}, Ld6;->n()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final q()I
    .locals 0

    .line 1
    iget-object p0, p0, Lw60;->g:Lx60;

    .line 2
    .line 3
    iget-object p0, p0, Lx60;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final r()I
    .locals 0

    .line 1
    iget-object p0, p0, Lw60;->g:Lx60;

    .line 2
    .line 3
    iget-object p0, p0, Lx60;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
