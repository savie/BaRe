.class public final Lpe8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lyy8;


# static fields
.field public static final c:Lnz8;


# instance fields
.field public a:[B

.field public b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnz8;

    .line 2
    .line 3
    const v1, 0xacc1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lnz8;-><init>(I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lpe8;->c:Lnz8;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lnz8;
    .locals 0

    .line 1
    sget-object p0, Lpe8;->c:Lnz8;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Lnz8;
    .locals 0

    .line 1
    iget-object p0, p0, Lpe8;->a:[B

    .line 2
    .line 3
    invoke-static {p0}, Lnz8;->b([B)Lnz8;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final c([BII)V
    .locals 0

    .line 1
    add-int/2addr p3, p2

    .line 2
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iput-object p1, p0, Lpe8;->a:[B

    .line 7
    .line 8
    return-void
.end method

.method public final d()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lpe8;->a:[B

    .line 2
    .line 3
    invoke-static {p0}, Lpz8;->a([B)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final e()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lpe8;->b:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lpe8;->a:[B

    .line 6
    .line 7
    invoke-static {p0}, Lpz8;->a([B)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {v0}, Lpz8;->a([B)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final f()Lnz8;
    .locals 1

    .line 1
    iget-object v0, p0, Lpe8;->b:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lpe8;->a:[B

    .line 6
    .line 7
    invoke-static {p0}, Lnz8;->b([B)Lnz8;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Lnz8;

    .line 13
    .line 14
    array-length v0, v0

    .line 15
    invoke-direct {p0, v0}, Lnz8;-><init>(I)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public final h([BII)V
    .locals 1

    .line 1
    add-int v0, p2, p3

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lpe8;->b:[B

    .line 8
    .line 9
    iget-object v0, p0, Lpe8;->a:[B

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lpe8;->c([BII)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
