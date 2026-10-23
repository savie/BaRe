.class public final Ly40;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lgd4;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Ly40;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ly40;->a:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Ly40;->c:Ljava/lang/Object;

    .line 24
    iput p2, p0, Ly40;->b:I

    .line 25
    iput-object p3, p0, Ly40;->d:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Lwi8;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ly40;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lwi8;->getLength()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Ly40;->b:I

    .line 12
    .line 13
    invoke-interface {p1}, Lwi8;->getType()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Ly40;->d:Ljava/io/Serializable;

    .line 18
    .line 19
    iput-object p1, p0, Ly40;->c:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 0

    .line 1
    iget-object p0, p0, Ly40;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lwi8;

    .line 4
    .line 5
    invoke-interface {p0}, Lwi8;->c()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public d()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ly40;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lwi8;

    .line 4
    .line 5
    invoke-interface {v0}, Lwi8;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lwi8;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-object v1, p0, Ly40;->d:Ljava/io/Serializable;

    .line 17
    .line 18
    check-cast v1, Ljava/lang/Class;

    .line 19
    .line 20
    iget p0, p0, Ly40;->b:I

    .line 21
    .line 22
    invoke-static {v1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {v0, p0}, Lwi8;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ly40;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lwi8;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lwi8;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object p1
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Ly40;->d:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Class;

    .line 4
    .line 5
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Ly40;->a:I

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
    const-string v1, "FileNotifyInformation{action="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ly40;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lz83;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ", fileName=\'"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Ly40;->d:Ljava/io/Serializable;

    .line 31
    .line 32
    check-cast p0, Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "\'}"

    .line 35
    .line 36
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
