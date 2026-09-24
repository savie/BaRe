.class public final Lxi8;
.super Lyl0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcd;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lyl0;-><init>(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lyl0;->k(Lcd;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lxi8;->i:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final c()F
    .locals 0

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    return p0
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lyl0;->e:Lcd;

    .line 2
    .line 3
    iget-object p0, p0, Lxi8;->i:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p0}, Lcd;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final g(Lwo4;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lxi8;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lyl0;->e:Lcd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lyl0;->i()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final j(F)V
    .locals 0

    .line 1
    iput p1, p0, Lyl0;->d:F

    .line 2
    .line 3
    return-void
.end method
