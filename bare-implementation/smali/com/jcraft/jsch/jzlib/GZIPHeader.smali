.class final Lcom/jcraft/jsch/jzlib/GZIPHeader;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:I

.field public b:[B

.field public c:[B

.field public d:[B

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xff

    .line 5
    .line 6
    iput v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->a:I

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->e:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->b:[B

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    array-length v2, v0

    .line 13
    new-array v3, v2, [B

    .line 14
    .line 15
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    iput-object v3, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->b:[B

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->c:[B

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    array-length v2, v0

    .line 25
    new-array v3, v2, [B

    .line 26
    .line 27
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    iput-object v3, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->c:[B

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->d:[B

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    array-length v2, v0

    .line 37
    new-array v3, v2, [B

    .line 38
    .line 39
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    iput-object v3, p0, Lcom/jcraft/jsch/jzlib/GZIPHeader;->d:[B

    .line 43
    .line 44
    :cond_2
    return-object p0
.end method
