.class public final Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private activity:Landroid/app/Activity;

.field private browserSelector:Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;

.field private context:Landroid/content/Context;

.field private fragment:Landroidx/fragment/app/o;


# virtual methods
.method public final activity(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    return-void
.end method

.method public final browserSelector(Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->browserSelector:Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;

    .line 2
    .line 3
    return-void
.end method

.method public final build()Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;
    .locals 4

    .line 1
    new-instance v0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->activity:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->fragment:Landroidx/fragment/app/o;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->browserSelector:Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/fragment/app/o;Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final context(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method

.method public final fragment(Landroidx/fragment/app/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->fragment:Landroidx/fragment/app/o;

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AndroidAuthorizationStrategyFactory.AndroidAuthorizationStrategyFactoryBuilder(context="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", activity="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->activity:Landroid/app/Activity;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", fragment="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->fragment:Landroidx/fragment/app/o;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", browserSelector="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/ui/AndroidAuthorizationStrategyFactory$AndroidAuthorizationStrategyFactoryBuilder;->browserSelector:Lcom/microsoft/identity/common/internal/ui/browser/AndroidBrowserSelector;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ")"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
