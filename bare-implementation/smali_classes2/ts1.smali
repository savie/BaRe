.class public final Lts1;
.super Lxh8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lts1;->q:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDataChange(Leb2;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lorg/swiftapps/swiftbackup/common/Const;->a:Lorg/swiftapps/swiftbackup/common/Const;

    .line 18
    .line 19
    iget-object p0, p0, Lts1;->q:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lorg/swiftapps/swiftbackup/common/Const;->Q(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    :goto_0
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/common/V;->setC(Ljava/lang/Boolean;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method
