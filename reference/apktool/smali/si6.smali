.class public final Lsi6;
.super Lla4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final transient k:[Ljava/lang/Object;

.field public final transient n:I

.field public final transient p:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lga4;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lsi6;->k:[Ljava/lang/Object;

    .line 6
    .line 7
    iput p2, p0, Lsi6;->n:I

    .line 8
    .line 9
    iput p3, p0, Lsi6;->p:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lsi6;->p:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Lsz8;->f(II)V

    .line 4
    .line 5
    .line 6
    mul-int/lit8 p1, p1, 0x2

    .line 7
    .line 8
    iget v0, p0, Lsi6;->n:I

    .line 9
    .line 10
    add-int/2addr p1, v0

    .line 11
    iget-object p0, p0, Lsi6;->k:[Ljava/lang/Object;

    .line 12
    .line 13
    aget-object p0, p0, p1

    .line 14
    .line 15
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget p0, p0, Lsi6;->p:I

    .line 2
    .line 3
    return p0
.end method
