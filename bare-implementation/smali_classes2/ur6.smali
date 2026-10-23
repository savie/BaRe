.class public final synthetic Lur6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lvr6$a;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lvr6$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lur6;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lur6;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lur6;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lur6;->d:Lvr6$a;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lur6;->c:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lur6;->d:Lvr6$a;

    .line 4
    .line 5
    iget v2, p0, Lur6;->a:I

    .line 6
    .line 7
    iget-object p0, p0, Lur6;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v2, p0, v0, v1}, Lvr6;->a(ILjava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
