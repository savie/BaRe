.class public final synthetic Lrf4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lrf4;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lrf4;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lrf4;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lrf4;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lrf4;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lrf4;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lj57;

    .line 11
    .line 12
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;

    .line 13
    .line 14
    iget-object p0, p0, Lj57;->n:Lcz;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    iget-object p1, v0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->q:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_0
    check-cast p0, Lqo5;

    .line 29
    .line 30
    check-cast v0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;

    .line 31
    .line 32
    iget-object p0, p0, Lqo5;->o:Lnu;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lnu;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/LicensesActivity;

    .line 41
    .line 42
    check-cast v0, Lnt4;

    .line 43
    .line 44
    iget-object p1, v0, Lnt4;->b:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p0, p1}, Lorg/swiftapps/swiftbackup/common/Const;->B(Landroid/content/Context;Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_2
    check-cast p0, Lwa;

    .line 59
    .line 60
    check-cast v0, Lcf4;

    .line 61
    .line 62
    invoke-virtual {p0}, Lho;->dismiss()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcf4;->invoke()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
