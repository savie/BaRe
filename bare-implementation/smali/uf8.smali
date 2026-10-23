.class public Luf8;
.super Ldc6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luf8$a;
    }
.end annotation


# instance fields
.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldc6;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic A(Luf8;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Luf8;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static B()Luf8$a;
    .locals 1

    .line 1
    new-instance v0, Luf8$a;

    .line 2
    .line 3
    invoke-direct {v0}, Luf8$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic z(Luf8;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Luf8;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Luf8;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

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
    instance-of v0, p1, Luf8;

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
    invoke-super {p0, p1}, Ldc6;->equals(Ljava/lang/Object;)Z

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
    check-cast p1, Luf8;

    .line 19
    .line 20
    iget-object p0, p0, Luf8;->w:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p1, Luf8;->w:Ljava/lang/String;

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
    invoke-super {p0}, Ldc6;->hashCode()I

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
    iget-object p0, p0, Luf8;->w:Ljava/lang/String;

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

.method public j()Lokhttp3/MediaType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ldc6;->j()Lokhttp3/MediaType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object p0, p0, Luf8;->w:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/nio/file/Files;->probeContentType(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    sget-object v1, Lokhttp3/MediaType;->d:Lai6;

    .line 25
    .line 26
    :try_start_0
    invoke-static {p0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-object p0

    .line 31
    :catch_0
    :cond_1
    return-object v0
.end method
