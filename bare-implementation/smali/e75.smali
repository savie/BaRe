.class public final Le75;
.super Lr4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lf75;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lf75;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le75;->a:Lf75;

    .line 5
    .line 6
    iput p2, p0, Le75;->b:I

    .line 7
    .line 8
    iput-boolean p3, p0, Le75;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final e(Li75;)V
    .locals 1

    .line 1
    new-instance v0, Ld75;

    .line 2
    .line 3
    iget-object p0, p0, Le75;->a:Lf75;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ld75;-><init>(Lf75;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p1, Li75;->d:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method public final g(Lbb2;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le75;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lc75;

    .line 6
    .line 7
    iget-object p0, p0, Le75;->a:Lf75;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lc75;-><init>(Lf75;)V

    .line 10
    .line 11
    .line 12
    const-class p0, Lar7;

    .line 13
    .line 14
    invoke-virtual {p1, p0, v0}, Lbb2;->a(Ljava/lang/Class;Lsj7;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final h(Ln75;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le75;->a:Lf75;

    .line 2
    .line 3
    iget v0, v0, Lf75;->c:I

    .line 4
    .line 5
    iput v0, p1, Ln75;->a:I

    .line 6
    .line 7
    iget p0, p0, Le75;->b:I

    .line 8
    .line 9
    iput p0, p1, Ln75;->e:I

    .line 10
    .line 11
    return-void
.end method
