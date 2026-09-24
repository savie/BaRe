.class public final Lokhttp3/RequestBody$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lf51;->a:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lokhttp3/MediaType;->a(Lokhttp3/MediaType;)Ljava/nio/charset/Charset;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, "; charset=utf-8"

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :try_start_0
    invoke-static {p1}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 32
    .line 33
    .line 34
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    const/4 p1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object v0, v1

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    array-length v0, p0

    .line 47
    array-length v1, p0

    .line 48
    int-to-long v2, v1

    .line 49
    const-wide/16 v4, 0x0

    .line 50
    .line 51
    int-to-long v6, v0

    .line 52
    invoke-static/range {v2 .. v7}, Lokhttp3/internal/_UtilCommonKt;->a(JJJ)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 56
    .line 57
    invoke-direct {v1, p0, v0, p1}, Lokhttp3/RequestBody$Companion$toRequestBody$3;-><init>([BILokhttp3/MediaType;)V

    .line 58
    .line 59
    .line 60
    return-object v1
.end method

.method public static b([BILokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;
    .locals 7

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    array-length p1, p0

    .line 7
    array-length v0, p0

    .line 8
    int-to-long v1, v0

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    int-to-long v5, p1

    .line 12
    invoke-static/range {v1 .. v6}, Lokhttp3/internal/_UtilCommonKt;->a(JJJ)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1, p2}, Lokhttp3/RequestBody$Companion$toRequestBody$3;-><init>([BILokhttp3/MediaType;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
