.class public final synthetic Lgj0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lat5;


# instance fields
.field public final synthetic a:Lij0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lij0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgj0;->a:Lij0;

    .line 5
    .line 6
    iput p2, p0, Lgj0;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lli0;

    .line 2
    .line 3
    iget-object p1, p0, Lgj0;->a:Lij0;

    .line 4
    .line 5
    iget p0, p0, Lgj0;->b:I

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lhg6;->f(I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p1, Lij0;->f:Lkj0;

    .line 11
    .line 12
    if-eqz p0, :cond_3

    .line 13
    .line 14
    iget-object p1, p0, Lkj0;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Llj0;

    .line 17
    .line 18
    iget-object p0, p0, Lkj0;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lpj0;

    .line 21
    .line 22
    iget-boolean v0, p0, Lpj0;->d:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lpj0;->b()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 36
    :goto_1
    iget-object p1, p1, Llj0;->S:Lcom/google/android/material/button/MaterialButton;

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 39
    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    const/high16 p0, 0x3f800000    # 1.0f

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/high16 p0, 0x3f000000    # 0.5f

    .line 47
    .line 48
    :goto_2
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 49
    .line 50
    .line 51
    :cond_3
    return-void
.end method
