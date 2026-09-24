.class public final synthetic Lic9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lud9;

.field public final synthetic b:Ljq6;

.field public final synthetic c:Lw76;


# direct methods
.method public synthetic constructor <init>(Lud9;Ljq6;Lw76;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lic9;->a:Lud9;

    .line 5
    .line 6
    iput-object p2, p0, Lic9;->b:Ljq6;

    .line 7
    .line 8
    iput-object p3, p0, Lic9;->c:Lw76;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lic9;->b:Ljq6;

    .line 2
    .line 3
    iget-object v1, p0, Lic9;->c:Lw76;

    .line 4
    .line 5
    iget-object p0, p0, Lic9;->a:Lud9;

    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Lud9;->J(Lud9;Ljq6;Lw76;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
