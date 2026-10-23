.class public final Lhw0;
.super Ljava/io/InputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Ljw0;


# direct methods
.method public constructor <init>(Ljw0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhw0;->a:Ljw0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 0

    .line 1
    iget-object p0, p0, Lhw0;->a:Ljw0;

    .line 2
    .line 3
    invoke-virtual {p0}, Low0;->a()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final read()I
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lhw0;->a:Ljw0;

    .line 2
    .line 3
    invoke-virtual {p0}, Low0;->n()B

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Liw0; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    and-int/lit16 p0, p0, 0xff

    .line 8
    .line 9
    return p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance v0, Ljava/io/IOException;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public final read([B)I
    .locals 1

    .line 17
    :try_start_0
    iget-object p0, p0, Lhw0;->a:Ljw0;

    .line 18
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Low0;->o([BI)V

    .line 19
    array-length p0, p1
    :try_end_0
    .catch Liw0; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 20
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final skip(J)J
    .locals 1

    .line 1
    iget-object p0, p0, Lhw0;->a:Ljw0;

    .line 2
    .line 3
    long-to-int v0, p1

    .line 4
    iput v0, p0, Low0;->c:I

    .line 5
    .line 6
    return-wide p1
.end method
