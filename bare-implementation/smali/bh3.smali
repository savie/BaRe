.class public final Lbh3;
.super Lkv1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Ljava/util/Map;

.field public b:Ljava/util/Iterator;

.field public c:Lh97;

.field public d:Ljava/util/Map;

.field public e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic k:Lch3;

.field public n:I


# direct methods
.method public constructor <init>(Lch3;Lkv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbh3;->k:Lch3;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkv1;-><init>(Ljv1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lbh3;->f:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lbh3;->n:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lbh3;->n:I

    .line 9
    .line 10
    iget-object p1, p0, Lbh3;->k:Lch3;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lch3;->b(Lkv1;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
