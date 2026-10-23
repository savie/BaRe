.class public final Ldy5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:I

.field public final synthetic b:Lgy5;


# direct methods
.method public constructor <init>(Lgy5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldy5;->b:Lgy5;

    .line 5
    .line 6
    iget p1, p1, Lgy5;->b:I

    .line 7
    .line 8
    iput p1, p0, Ldy5;->a:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Ldy5;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Ldy5;->b:Lgy5;

    .line 4
    .line 5
    iget p0, p0, Lgy5;->c:I

    .line 6
    .line 7
    if-ge v0, p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ldy5;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Ldy5;->b:Lgy5;

    .line 8
    .line 9
    iget-object v0, v0, Lgy5;->a:[Lm61;

    .line 10
    .line 11
    iget v1, p0, Ldy5;->a:I

    .line 12
    .line 13
    aget-object v0, v0, v1

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    iput v1, p0, Ldy5;->a:I

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 21
    .line 22
    const-string v0, "No more elements."

    .line 23
    .line 24
    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Can\'t remove component from immutable Path!"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method
