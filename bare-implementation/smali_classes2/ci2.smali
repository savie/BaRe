.class public final Lci2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lzc3;
.implements Lyc3;
.implements Lxv6;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lci2;->a:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    aget-byte p1, p1, v0

    .line 10
    .line 11
    and-int/lit16 p1, p1, 0xff

    .line 12
    .line 13
    add-int/2addr p1, v1

    .line 14
    iput p1, p0, Lci2;->a:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "Unsupported Delta filter properties"

    .line 18
    .line 19
    invoke-static {p0}, Ly5;->h(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    throw p0
.end method


# virtual methods
.method public a()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public b(Ljava/io/InputStream;Lv40;)Ljava/io/InputStream;
    .locals 0

    .line 1
    new-instance p2, Lgi2;

    .line 2
    .line 3
    iget p0, p0, Lci2;->a:I

    .line 4
    .line 5
    invoke-direct {p2, p1, p0}, Lgi2;-><init>(Ljava/io/InputStream;I)V

    .line 6
    .line 7
    .line 8
    return-object p2
.end method

.method public c()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public d()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public e()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getN()I
    .locals 0

    .line 1
    iget p0, p0, Lci2;->a:I

    .line 2
    .line 3
    return p0
.end method
