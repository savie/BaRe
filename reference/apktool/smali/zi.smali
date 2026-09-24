.class public final synthetic Lzi;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lrj;


# direct methods
.method public synthetic constructor <init>(Lrj;I)V
    .locals 0

    .line 1
    iput p2, p0, Lzi;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lzi;->b:Lrj;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lzi;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lzi;->b:Lrj;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lrj;->H()Lsj;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget-object p0, p0, Lsj;->e:Landroid/widget/ImageView;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_0
    new-instance v0, Lwi;

    .line 16
    .line 17
    iget-object v1, p0, Lrj;->e:Lk28;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lwi;-><init>(Lk28;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lrj;->P:Lij;

    .line 23
    .line 24
    iput-object v1, v0, Lr35;->e:Lqt3;

    .line 25
    .line 26
    iget-object p0, p0, Lrj;->O:Lhj;

    .line 27
    .line 28
    iput-object p0, v0, Lwi;->g:Lhj;

    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
