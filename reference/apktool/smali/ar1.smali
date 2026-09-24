.class public final Lar1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Laj8;


# virtual methods
.method public final onCancelled(Lwc2;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 5
    .line 6
    iget-object v2, p1, Lwc2;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x4

    .line 12
    const/4 v5, 0x0

    .line 13
    const-string v1, "ConfigRepo"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onDataChange(Leb2;)V
    .locals 1

    .line 1
    const-class p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 8
    .line 9
    sget-object p1, Lbr1;->a:Lbr1;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Lbr1;->d(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lbh;

    .line 15
    .line 16
    const/16 v0, 0xe

    .line 17
    .line 18
    invoke-direct {p1, p0, v0}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
