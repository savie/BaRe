.class public Lyf8;
.super Lfv3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lgx5;


# direct methods
.method public constructor <init>(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lfv3;-><init>(Lokhttp3/Headers;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lgx5;

    .line 5
    .line 6
    const-string p2, "x-amz-checksum-crc32"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const-string p2, "x-amz-checksum-crc32c"

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const-string p2, "x-amz-checksum-crc64nvme"

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const-string p2, "x-amz-checksum-sha1"

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    const-string p2, "x-amz-checksum-sha256"

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    move v1, p6

    .line 37
    move-object v2, p7

    .line 38
    invoke-direct/range {v0 .. v7}, Lgx5;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lyf8;->a:Lgx5;

    .line 42
    .line 43
    return-void
.end method
