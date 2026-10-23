.class public final synthetic Lcj;
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
    iput p2, p0, Lcj;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcj;->b:Lrj;

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
    iget v0, p0, Lcj;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lcj;->b:Lrj;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lwi;

    .line 9
    .line 10
    iget-object v1, p0, Lrj;->e:Lk28;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lwi;-><init>(Lk28;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lrj;->P:Lij;

    .line 16
    .line 17
    iput-object v1, v0, Lr35;->e:Lqt3;

    .line 18
    .line 19
    iget-object p0, p0, Lrj;->O:Lhj;

    .line 20
    .line 21
    iput-object p0, v0, Lwi;->g:Lhj;

    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_0
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Lol1;->j(Z)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lbe8;->a:Lbe8;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
