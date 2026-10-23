.class Lcom/jcraft/jsch/DHG1;
.super Lcom/jcraft/jsch/DHGN;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final s:[B

.field public static final t:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x0

    .line 6
    aput-byte v1, v0, v2

    .line 7
    .line 8
    sput-object v0, Lcom/jcraft/jsch/DHG1;->s:[B

    .line 9
    .line 10
    const/16 v0, 0x81

    .line 11
    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    fill-array-data v0, :array_0

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/jcraft/jsch/DHG1;->t:[B

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 1
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x37t
        0xft
        -0x26t
        -0x5et
        0x21t
        0x68t
        -0x3et
        0x34t
        -0x3ct
        -0x3at
        0x62t
        -0x75t
        -0x80t
        -0x24t
        0x1ct
        -0x2ft
        0x29t
        0x2t
        0x4et
        0x8t
        -0x76t
        0x67t
        -0x34t
        0x74t
        0x2t
        0xbt
        -0x42t
        -0x5at
        0x3bt
        0x13t
        -0x65t
        0x22t
        0x51t
        0x4at
        0x8t
        0x79t
        -0x72t
        0x34t
        0x4t
        -0x23t
        -0x11t
        -0x6bt
        0x19t
        -0x4dt
        -0x33t
        0x3at
        0x43t
        0x1bt
        0x30t
        0x2bt
        0xat
        0x6dt
        -0xet
        0x5ft
        0x14t
        0x37t
        0x4ft
        -0x1ft
        0x35t
        0x6dt
        0x6dt
        0x51t
        -0x3et
        0x45t
        -0x1ct
        -0x7bt
        -0x4bt
        0x76t
        0x62t
        0x5et
        0x7et
        -0x3at
        -0xct
        0x4ct
        0x42t
        -0x17t
        -0x5at
        0x37t
        -0x13t
        0x6bt
        0xbt
        -0x1t
        0x5ct
        -0x4at
        -0xct
        0x6t
        -0x49t
        -0x13t
        -0x12t
        0x38t
        0x6bt
        -0x5t
        0x5at
        -0x77t
        -0x61t
        -0x5bt
        -0x52t
        -0x61t
        0x24t
        0x11t
        0x7ct
        0x4bt
        0x1ft
        -0x1at
        0x49t
        0x28t
        0x66t
        0x51t
        -0x14t
        -0x1at
        0x53t
        -0x7ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final f()[B
    .locals 0

    .line 1
    sget-object p0, Lcom/jcraft/jsch/DHG1;->s:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final g()[B
    .locals 0

    .line 1
    sget-object p0, Lcom/jcraft/jsch/DHG1;->t:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "sha-1"

    .line 2
    .line 3
    return-object p0
.end method
