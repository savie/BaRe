.class public final Ltb2;
.super Lkv1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lic2;

.field public b:Lmj5;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lic2;

.field public e:I


# direct methods
.method public constructor <init>(Lic2;Lkv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltb2;->d:Lic2;

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
    iput-object p1, p0, Ltb2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Ltb2;->e:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Ltb2;->e:I

    .line 9
    .line 10
    iget-object p1, p0, Ltb2;->d:Lic2;

    .line 11
    .line 12
    invoke-static {p1, p0}, Lic2;->d(Lic2;Lkv1;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
