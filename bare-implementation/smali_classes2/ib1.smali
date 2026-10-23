.class public final synthetic Lib1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lib1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lib1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lib1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lib1;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget v0, p0, Lib1;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lib1;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lib1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lib1;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lv47;

    .line 13
    .line 14
    check-cast v2, Ljava/util/Set;

    .line 15
    .line 16
    check-cast v1, Lj57;

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lv47;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 23
    .line 24
    iget-object p1, v1, Lj57;->o:Lu10;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Lu10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :pswitch_0
    check-cast p0, Ljx2;

    .line 33
    .line 34
    check-cast v2, Ljh6;

    .line 35
    .line 36
    check-cast v1, Lvo3;

    .line 37
    .line 38
    iget p1, v2, Ljh6;->a:I

    .line 39
    .line 40
    check-cast p0, Lkx2;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lkx2;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lxk3;

    .line 47
    .line 48
    sget-object p1, Lvk3;->Desc:Lvk3;

    .line 49
    .line 50
    invoke-virtual {v1, p0, p1}, Lvo3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_1
    check-cast p0, Llh6;

    .line 55
    .line 56
    check-cast v2, Ljava/util/List;

    .line 57
    .line 58
    check-cast v1, Lmt3;

    .line 59
    .line 60
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iput-object p2, p0, Llh6;->a:Ljava/lang/Object;

    .line 65
    .line 66
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Llh6;->a:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-interface {v1, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
