.class public final synthetic Lvf4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/intro/d;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/intro/d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvf4;->a:Lorg/swiftapps/swiftbackup/intro/d;

    .line 5
    .line 6
    iput-boolean p2, p0, Lvf4;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lvf4;->a:Lorg/swiftapps/swiftbackup/intro/d;

    .line 3
    .line 4
    iput-object v0, v1, Lorg/swiftapps/swiftbackup/intro/d;->e:Lbl7;

    .line 5
    .line 6
    iget-object v0, v1, Lorg/swiftapps/swiftbackup/intro/d;->k:Lex6;

    .line 7
    .line 8
    iget-boolean p0, p0, Lvf4;->b:Z

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    sget-object p0, Lorg/swiftapps/swiftbackup/intro/d$a;->SUCCESS:Lorg/swiftapps/swiftbackup/intro/d$a;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p0, Lorg/swiftapps/swiftbackup/intro/d$a;->FAILED:Lorg/swiftapps/swiftbackup/intro/d$a;

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lbe8;->a:Lbe8;

    .line 21
    .line 22
    return-object p0
.end method
