.class public final Lorg/swiftapps/swiftbackup/home/schedule/data/j;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static final a(Lorg/swiftapps/swiftbackup/home/schedule/data/j;)Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-boolean p0, Lmp6;->g:Z

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    sget-object p0, Liu;->APP:Liu;

    .line 9
    .line 10
    sget-object v0, Liu;->DATA:Liu;

    .line 11
    .line 12
    filled-new-array {p0, v0}, [Liu;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    sget-object p0, Liu;->APP:Liu;

    .line 22
    .line 23
    invoke-static {p0}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static final b(Lorg/swiftapps/swiftbackup/home/schedule/data/j;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lq05;->DEVICE:Lq05;

    .line 5
    .line 6
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
