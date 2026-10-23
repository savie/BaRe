.class public final Lr87;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements La87;


# instance fields
.field public final a:Lb97;


# direct methods
.method public constructor <init>(Lb97;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lr87;->a:Lb97;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lq87;

    .line 2
    .line 3
    iget-object p0, p0, Lr87;->a:Lb97;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Lb97;->a(Lu87;)Lu87;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v0, p0, v1, v1}, Lq87;-><init>(Lu87;Li38;Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final h(Ljava/lang/Object;Lqd8;)V
    .locals 1

    .line 1
    check-cast p1, Lq87;

    .line 2
    .line 3
    sget-object p0, Lni4;->d:Lni4;

    .line 4
    .line 5
    sget-object v0, Lq87;->Companion:Lp87;

    .line 6
    .line 7
    invoke-virtual {v0}, Lp87;->serializer()Ldo4;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0, p1}, Lni4;->b(Ldo4;Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object p1, Lf51;->a:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p1, p2, Lqd8;->a:Ljava/io/FileOutputStream;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final l(Ljava/io/FileInputStream;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    sget-object p0, Lni4;->d:Lni4;

    .line 2
    .line 3
    invoke-static {p1}, Lcy0;->E(Ljava/io/InputStream;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/String;

    .line 8
    .line 9
    sget-object v1, Lf51;->a:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object p1, Lq87;->Companion:Lp87;

    .line 18
    .line 19
    invoke-virtual {p1}, Lp87;->serializer()Ldo4;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1, v0}, Lni4;->a(Ldo4;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lq87;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    return-object p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    new-instance p1, Ldy1;

    .line 32
    .line 33
    const-string v0, "Cannot parse session data"

    .line 34
    .line 35
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method
