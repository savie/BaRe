.class public final Lhb2;
.super Lkv1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Llh6;

.field public e:Lic2;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic k:Lib2;

.field public n:I


# direct methods
.method public constructor <init>(Lib2;Lkv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhb2;->k:Lib2;

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
    iput-object p1, p0, Lhb2;->f:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lhb2;->n:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lhb2;->n:I

    .line 9
    .line 10
    iget-object p1, p0, Lhb2;->k:Lib2;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Lib2;->a(Lxa2;Lkv1;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
