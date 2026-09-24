.class public final Li36;
.super Lxh8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final onDataChange(Leb2;)V
    .locals 2

    .line 1
    sget-boolean p0, Lj36;->a:Z

    .line 2
    .line 3
    const-string p0, "main"

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Leb2;->a(Ljava/lang/String;)Leb2;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sput-object p0, Lj36;->c:Leb2;

    .line 10
    .line 11
    const-string p0, "test"

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Leb2;->a(Ljava/lang/String;)Leb2;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sput-object p0, Lj36;->d:Leb2;

    .line 18
    .line 19
    sget-object p0, Lj36;->c:Leb2;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Leb2;->a:Lsb4;

    .line 24
    .line 25
    iget-object p0, p0, Lsb4;->a:Lqn5;

    .line 26
    .line 27
    invoke-interface {p0}, Lqn5;->z()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    int-to-long p0, p0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "Init complete with actions for "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p0, " apps"

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "PostDataRestoreActions"

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method
