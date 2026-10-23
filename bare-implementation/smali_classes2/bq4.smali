.class public final Lbq4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lzc3;
.implements Lyc3;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e8

    .line 5
    .line 6
    iput v0, p0, Lbq4;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public b(Ljava/io/InputStream;Lv40;)Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Ldq4;

    .line 2
    .line 3
    iget p0, p0, Lbq4;->a:I

    .line 4
    .line 5
    invoke-direct {v0, p1, p0, p2}, Ldq4;-><init>(Ljava/io/InputStream;ILv40;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public c()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public d()I
    .locals 0

    .line 1
    iget p0, p0, Lbq4;->a:I

    .line 2
    .line 3
    invoke-static {p0}, Ldq4;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    div-int/lit16 p0, p0, 0x400

    .line 8
    .line 9
    add-int/lit8 p0, p0, 0x68

    .line 10
    .line 11
    return p0
.end method

.method public e()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
