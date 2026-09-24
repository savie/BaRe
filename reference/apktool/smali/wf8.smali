.class public Lwf8;
.super Lyb6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwf8$b;,
        Lwf8$a;
    }
.end annotation


# instance fields
.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lyb6;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldc6;Ljava/lang/String;ILox0;Lv64$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4, p5}, Lyb6;-><init>(Ldc6;Lox0;Lv64$c;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lwf8;->l:Ljava/lang/String;

    .line 5
    .line 6
    iput p3, p0, Lwf8;->m:I

    .line 7
    .line 8
    iput-object p4, p0, Lyb6;->h:Lox0;

    .line 9
    .line 10
    invoke-virtual {p1}, Lyr5;->q()Lg87;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lyr5;->q()Lg87;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    instance-of p2, p2, Lg87$a;

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lyb6;->k:Lv64$c;

    .line 25
    .line 26
    invoke-virtual {p1}, Lyr5;->q()Lg87;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lg87;->a()Lv64$c;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lv64$c;->k(Lv64$c;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public static synthetic n(Lwf8;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwf8;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic o(Lwf8;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lwf8;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic p(Lwf8;)I
    .locals 0

    .line 1
    iget p0, p0, Lwf8;->m:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic q(Lwf8;I)I
    .locals 0

    .line 1
    iput p1, p0, Lwf8;->m:I

    .line 2
    .line 3
    return p1
.end method

.method public static r()Lwf8$a;
    .locals 1

    .line 1
    new-instance v0, Lwf8$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lwf8$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lwf8;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-super {p0, p1}, Lyb6;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    return v2

    .line 18
    :cond_2
    check-cast p1, Lwf8;

    .line 19
    .line 20
    iget-object v1, p0, Lwf8;->l:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lwf8;->l:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget p0, p0, Lwf8;->m:I

    .line 31
    .line 32
    iget p1, p1, Lwf8;->m:I

    .line 33
    .line 34
    if-ne p0, p1, :cond_3

    .line 35
    .line 36
    return v0

    .line 37
    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lyb6;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lwf8;->l:Ljava/lang/String;

    .line 10
    .line 11
    iget p0, p0, Lwf8;->m:I

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public s()I
    .locals 0

    .line 1
    iget p0, p0, Lwf8;->m:I

    .line 2
    .line 3
    return p0
.end method

.method public t()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwf8;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
