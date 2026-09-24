.class public final Lzu2;
.super Lji8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final n:Lyu2;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lyu2;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lyu2;-><init>(Landroid/widget/TextView;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lzu2;->n:Lyu2;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final I(Z)V
    .locals 1

    .line 1
    sget-object v0, Lku2;->k:Lku2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-object p0, p0, Lzu2;->n:Lyu2;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lyu2;->I(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final J(Z)V
    .locals 1

    .line 1
    sget-object v0, Lku2;->k:Lku2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object p0, p0, Lzu2;->n:Lyu2;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iput-boolean p1, p0, Lyu2;->q:Z

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p0, p1}, Lyu2;->J(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final P(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 1

    .line 1
    sget-object v0, Lku2;->k:Lku2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_1
    iget-object p0, p0, Lzu2;->n:Lyu2;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lyu2;->P(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final n([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    .line 1
    sget-object v0, Lku2;->k:Lku2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_1
    iget-object p0, p0, Lzu2;->n:Lyu2;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lyu2;->n([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final y()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lzu2;->n:Lyu2;

    .line 2
    .line 3
    iget-boolean p0, p0, Lyu2;->q:Z

    .line 4
    .line 5
    return p0
.end method
