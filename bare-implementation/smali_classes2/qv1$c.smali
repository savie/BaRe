.class public final Lqv1$c;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqv1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final index:I

.field private final total:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lqv1$c;->index:I

    .line 5
    .line 6
    iput p2, p0, Lqv1$c;->total:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lqv1$c;->index:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTotal()I
    .locals 0

    .line 1
    iget p0, p0, Lqv1$c;->total:I

    .line 2
    .line 3
    return p0
.end method
