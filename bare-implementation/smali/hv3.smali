.class public Lhv3;
.super Lfv3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lfv3;-><init>(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const-string p0, "x-amz-checksum-crc32"

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    const-string p0, "x-amz-checksum-crc32c"

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    const-string p0, "x-amz-checksum-crc64nvme"

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    const-string p0, "x-amz-checksum-sha1"

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    const-string p0, "x-amz-checksum-sha256"

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    const-string p0, "x-amz-checksum-type"

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public constructor <init>(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lin1;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lfv3;-><init>(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    .line 46
    invoke-virtual {p6}, La61;->g()Ljava/lang/String;

    .line 47
    invoke-virtual {p6}, La61;->b()Ljava/lang/String;

    .line 48
    invoke-virtual {p6}, La61;->c()Ljava/lang/String;

    .line 49
    invoke-virtual {p6}, La61;->d()Ljava/lang/String;

    .line 50
    invoke-virtual {p6}, La61;->e()Ljava/lang/String;

    .line 51
    invoke-virtual {p6}, La61;->f()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lqw1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lfv3;-><init>(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    .line 38
    invoke-virtual {p6}, Lqw1;->k()Ljava/time/ZonedDateTime;

    .line 39
    invoke-virtual {p6}, La61;->g()Ljava/lang/String;

    .line 40
    invoke-virtual {p6}, La61;->b()Ljava/lang/String;

    .line 41
    invoke-virtual {p6}, La61;->c()Ljava/lang/String;

    .line 42
    invoke-virtual {p6}, La61;->d()Ljava/lang/String;

    .line 43
    invoke-virtual {p6}, La61;->e()Ljava/lang/String;

    .line 44
    invoke-virtual {p6}, La61;->f()Ljava/lang/String;

    :cond_0
    return-void
.end method
