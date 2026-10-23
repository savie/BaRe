.class public abstract Lob4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Iterator;
.implements Lbo4;


# instance fields
.field public a:I

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lob4;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public abstract b(I)V
.end method

.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lob4;->b:I

    .line 2
    .line 3
    iget p0, p0, Lob4;->a:I

    .line 4
    .line 5
    if-ge v0, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lob4;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lob4;->b:I

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lob4;->a(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Lob4;->b:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    add-int/2addr v1, v2

    .line 17
    iput v1, p0, Lob4;->b:I

    .line 18
    .line 19
    iput-boolean v2, p0, Lob4;->c:Z

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    invoke-static {}, Lm0;->d()V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public final remove()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lob4;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lob4;->b:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    iput v0, p0, Lob4;->b:I

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lob4;->b(I)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lob4;->a:I

    .line 15
    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    iput v0, p0, Lob4;->a:I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lob4;->c:Z

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string p0, "Call next() before removing an element."

    .line 25
    .line 26
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
