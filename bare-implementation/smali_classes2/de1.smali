.class public final synthetic Lde1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljl0;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/Object;Ljl0;I)V
    .locals 0

    .line 1
    iput p4, p0, Lde1;->a:I

    .line 2
    .line 3
    iput-boolean p1, p0, Lde1;->b:Z

    .line 4
    .line 5
    iput-object p2, p0, Lde1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lde1;->d:Ljl0;

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
    .locals 2

    .line 1
    iget p1, p0, Lde1;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lde1;->d:Ljl0;

    .line 4
    .line 5
    iget-object v1, p0, Lde1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-boolean p0, p0, Lde1;->b:Z

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v1, Lj57;

    .line 13
    .line 14
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    iget-object p0, v1, Lj57;->r:Lzs;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    iget-object p1, v0, Lorg/swiftapps/swiftbackup/home/schedule/data/b;->q:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 23
    .line 24
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lzs;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :pswitch_0
    check-cast v1, Ljf;

    .line 33
    .line 34
    check-cast v0, Lmd1;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljf;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
