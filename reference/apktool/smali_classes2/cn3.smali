.class public final synthetic Lcn3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcn3;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lcn3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcn3;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lcn3;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lcn3;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lcn3;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lcn3;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lcn3;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lbp3;

    .line 13
    .line 14
    check-cast v1, Lcp3;

    .line 15
    .line 16
    check-cast v0, Lzk3;

    .line 17
    .line 18
    iget-object p1, p0, Lbp3;->B:Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->toggle()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, v0, p1, v2}, Lgm7;->v(Ljl0;ZZ)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lbp3;->s(Lzk3;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    check-cast p0, Len3;

    .line 36
    .line 37
    check-cast v1, Lfn3;

    .line 38
    .line 39
    check-cast v0, Ldn3;

    .line 40
    .line 41
    iget-object p0, p0, Lgm7;->j:Lqt3;

    .line 42
    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Lfh6;->b()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p0, v1, p1}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
