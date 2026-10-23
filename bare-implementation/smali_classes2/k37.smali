.class public final synthetic Lk37;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lm37;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lc47;->d()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lm37;->m()Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->K:Ljava/util/Map;

    .line 26
    .line 27
    invoke-virtual {p1, v2, v1}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->o(ZZ)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lm37;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lc47;->f(Lorg/swiftapps/swiftbackup/home/HomeActivity;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lm37;->m()Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v3, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->K:Ljava/util/Map;

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->o(ZZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lm37;->p()Lq47;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0, p1}, Lq47;->j(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 55
    .line 56
    return-object p0
.end method
