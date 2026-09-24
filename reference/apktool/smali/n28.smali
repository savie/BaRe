.class public final synthetic Ln28;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lv57;


# instance fields
.field public final synthetic a:Lp28;

.field public final synthetic b:Lt40;

.field public final synthetic c:Lt40;


# direct methods
.method public synthetic constructor <init>(Lp28;Lt40;Lt40;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln28;->a:Lp28;

    .line 5
    .line 6
    iput-object p2, p0, Ln28;->b:Lt40;

    .line 7
    .line 8
    iput-object p3, p0, Ln28;->c:Lt40;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln28;->a:Lp28;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp28;->current()Lt40;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Ln28;->b:Lt40;

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lp28;->b:Ljava/util/logging/Logger;

    .line 12
    .line 13
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 14
    .line 15
    const-string v2, "Context in storage not the expected context, Scope.close was not called correctly"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object v0, Lp28;->c:Ljava/lang/ThreadLocal;

    .line 21
    .line 22
    iget-object p0, p0, Ln28;->c:Lt40;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
