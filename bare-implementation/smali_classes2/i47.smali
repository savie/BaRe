.class public final synthetic Li47;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lq47;


# direct methods
.method public synthetic constructor <init>(IILq47;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Li47;->a:I

    .line 5
    .line 6
    iput p2, p0, Li47;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Li47;->c:Lq47;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lc47;->a:Lc47;

    .line 4
    .line 5
    invoke-virtual {v1}, Lc47;->c()Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/16 v16, 0x1ffc

    .line 10
    .line 11
    const/16 v17, 0x0

    .line 12
    .line 13
    iget v3, v0, Li47;->a:I

    .line 14
    .line 15
    iget v4, v0, Li47;->b:I

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    const/4 v11, 0x0

    .line 24
    const/4 v12, 0x0

    .line 25
    const/4 v13, 0x0

    .line 26
    const/4 v14, 0x0

    .line 27
    const/4 v15, 0x0

    .line 28
    invoke-static/range {v2 .. v17}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;IIILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lqj3;

    .line 33
    .line 34
    iget-object v0, v0, Li47;->c:Lq47;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-direct {v2, v1, v0, v3}, Lqj3;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData;Lq47;Z)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lzn4;->c(Lbt3;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Lq47;->e:Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;

    .line 44
    .line 45
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/jobs/AlarmReceiver;->c()V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lbe8;->a:Lbe8;

    .line 49
    .line 50
    return-object v0
.end method
