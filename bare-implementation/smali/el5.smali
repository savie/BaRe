.class public final Lel5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lfl5;


# direct methods
.method public constructor <init>(Lfl5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lel5;->a:Lfl5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    check-cast p1, Lal5;

    .line 2
    .line 3
    invoke-virtual {p1}, Lal5;->getItemData()Lic5;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lel5;->a:Lfl5;

    .line 8
    .line 9
    iget-object v0, p0, Lfl5;->h0:Lcl5;

    .line 10
    .line 11
    iget-object v1, p0, Lfl5;->g0:Lhl5;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iget-object v0, v0, Lcl5;->a:Lfc5;

    .line 15
    .line 16
    invoke-virtual {v0, p1, v1, v2}, Lfc5;->q(Landroid/view/MenuItem;Lwc5;I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lic5;->isCheckable()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Lic5;->isChecked()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0, p1}, Lfl5;->setCheckedItem(Landroid/view/MenuItem;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method
