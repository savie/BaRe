.class public Ls12;
.super Lyq5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls12$a;
    }
.end annotation


# instance fields
.field private g:Lv64$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lyq5;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldc6;Lokhttp3/MediaType;Ly51$a;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lyq5;-><init>(Lyq5;)V

    .line 2
    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lv64$c;

    .line 9
    .line 10
    const-string v1, "x-amz-checksum-algorithm"

    .line 11
    .line 12
    invoke-virtual {p3}, Ly51$a;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    filled-new-array {v1, p3}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-direct {v0, p3}, Lv64$c;-><init>([Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object p3, v0

    .line 24
    :goto_0
    invoke-virtual {p1, p2, p3}, Lyr5;->o(Lokhttp3/MediaType;Lv64$c;)Lv64$c;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Ls12;->g:Lv64$c;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Lvo1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lyq5;-><init>(Lyq5;)V

    .line 33
    invoke-virtual {p1}, Lyr5;->n()Lv64$c;

    move-result-object p1

    iput-object p1, p0, Ls12;->g:Lv64$c;

    return-void
.end method

.method public static synthetic i(Ls12;Lv64$c;)Lv64$c;
    .locals 0

    .line 1
    iput-object p1, p0, Ls12;->g:Lv64$c;

    .line 2
    .line 3
    return-object p1
.end method

.method public static j()Ls12$a;
    .locals 1

    .line 1
    new-instance v0, Ls12$a;

    .line 2
    .line 3
    invoke-direct {v0}, Ls12$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Ls12;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return v1

    .line 11
    :cond_1
    invoke-super {p0, p1}, Lyq5;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Ls12;

    .line 19
    .line 20
    iget-object p0, p0, Ls12;->g:Lv64$c;

    .line 21
    .line 22
    iget-object p1, p1, Ls12;->g:Lv64$c;

    .line 23
    .line 24
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Lyq5;->hashCode()I

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
    iget-object p0, p0, Ls12;->g:Lv64$c;

    .line 10
    .line 11
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public k()Lv64$c;
    .locals 0

    .line 1
    iget-object p0, p0, Ls12;->g:Lv64$c;

    .line 2
    .line 3
    return-object p0
.end method
