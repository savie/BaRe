.class public final synthetic Lil8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lls5;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(IIIIZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lil8;->a:I

    .line 5
    .line 6
    iput p2, p0, Lil8;->b:I

    .line 7
    .line 8
    iput-boolean p5, p0, Lil8;->c:Z

    .line 9
    .line 10
    iput p3, p0, Lil8;->d:I

    .line 11
    .line 12
    iput p4, p0, Lil8;->e:I

    .line 13
    .line 14
    iput-boolean p6, p0, Lil8;->f:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final n(Landroid/view/View;Ltv8;)Ltv8;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lil8;->c:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Ltv8;->d()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    :goto_0
    iget v2, p0, Lil8;->b:I

    .line 16
    .line 17
    add-int/2addr v2, v0

    .line 18
    iget-boolean v0, p0, Lil8;->f:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p2}, Ltv8;->a()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :cond_1
    iget v0, p0, Lil8;->e:I

    .line 27
    .line 28
    add-int/2addr v0, v1

    .line 29
    iget v1, p0, Lil8;->a:I

    .line 30
    .line 31
    iget p0, p0, Lil8;->d:I

    .line 32
    .line 33
    invoke-virtual {p1, v1, v2, p0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 34
    .line 35
    .line 36
    return-object p2
.end method
