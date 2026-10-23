.class public final Lx53;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lwj8;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lwj8;

    .line 7
    .line 8
    invoke-static {p2}, Lwj8;->a(I)B

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-static {p3}, Lwj8;->a(I)B

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-static {v0}, Lwj8;->a(I)B

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-direct {p1, p2, p3, v0}, Lwj8;-><init>(BBB)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lx53;->e:Lwj8;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final s()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lol1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, " requires YubiKey "

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lx53;->e:Lwj8;

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, " or later"

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final u(Lwj8;)Z
    .locals 2

    .line 1
    iget-byte v0, p1, Lwj8;->a:B

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lx53;->e:Lwj8;

    .line 6
    .line 7
    iget-byte v0, p0, Lwj8;->a:B

    .line 8
    .line 9
    iget-byte v1, p0, Lwj8;->b:B

    .line 10
    .line 11
    iget-byte p0, p0, Lwj8;->c:B

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1, p0}, Lwj8;->b(III)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-ltz p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method
