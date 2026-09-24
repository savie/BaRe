.class public final Lsa4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lz88;


# static fields
.field public static final c:[Lsa4;

.field public static final d:Lsa4;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v1, v0, [Lsa4;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    if-ge v3, v0, :cond_0

    .line 8
    .line 9
    new-instance v4, Lsa4;

    .line 10
    .line 11
    int-to-byte v5, v3

    .line 12
    invoke-direct {v4, v5}, Lsa4;-><init>(B)V

    .line 13
    .line 14
    .line 15
    aput-object v4, v1, v3

    .line 16
    .line 17
    add-int/lit8 v3, v3, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sput-object v1, Lsa4;->c:[Lsa4;

    .line 21
    .line 22
    aget-object v0, v1, v2

    .line 23
    .line 24
    sput-object v0, Lsa4;->d:Lsa4;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(B)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [C

    .line 6
    .line 7
    and-int/lit16 v1, p1, 0xff

    .line 8
    .line 9
    sget-object v2, Luu5;->a:[C

    .line 10
    .line 11
    aget-char v3, v2, v1

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    aput-char v3, v0, v4

    .line 15
    .line 16
    or-int/lit16 v1, v1, 0x100

    .line 17
    .line 18
    aget-char v1, v2, v1

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    aput-char v1, v0, v2

    .line 22
    .line 23
    new-instance v1, Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lsa4;->a:Ljava/lang/String;

    .line 29
    .line 30
    iput-byte p1, p0, Lsa4;->b:B

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final asByte()B
    .locals 0

    .line 1
    iget-byte p0, p0, Lsa4;->b:B

    .line 2
    .line 3
    return p0
.end method

.method public final asHex()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lsa4;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lsa4;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
