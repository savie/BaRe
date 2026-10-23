.class public final synthetic Lr37;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lr37;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lr37;->b:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;

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
    iget v0, p0, Lr37;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iget-object p0, p0, Lr37;->b:Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->X:I

    .line 10
    .line 11
    new-instance v0, Lur4;

    .line 12
    .line 13
    invoke-virtual {p0}, Lk28;->v()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-direct {v0, v1, p0}, Lur4;-><init>(IZ)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_0
    sget v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->X:I

    .line 22
    .line 23
    new-instance v0, Lur4;

    .line 24
    .line 25
    invoke-virtual {p0}, Lk28;->v()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-direct {v0, v1, p0}, Lur4;-><init>(IZ)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
