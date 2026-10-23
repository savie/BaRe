.class public final Lc19;
.super Lyc9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lc19;->q:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final synthetic b(Landroid/content/Context;Landroid/os/Looper;Lz91;Ljava/lang/Object;Lnz3;Loz3;)Lne;
    .locals 7

    .line 1
    iget p0, p0, Lc19;->q:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    move-object v4, p4

    .line 7
    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 8
    .line 9
    new-instance v0, Lc39;

    .line 10
    .line 11
    move-object v5, p5

    .line 12
    check-cast v5, Lg19;

    .line 13
    .line 14
    move-object v6, p6

    .line 15
    check-cast v6, Lg19;

    .line 16
    .line 17
    move-object v1, p1

    .line 18
    move-object v2, p2

    .line 19
    move-object v3, p3

    .line 20
    invoke-direct/range {v0 .. v6}, Lc39;-><init>(Landroid/content/Context;Landroid/os/Looper;Lz91;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lg19;Lg19;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_0
    invoke-static {p4}, Leq3;->g(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    throw p0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
