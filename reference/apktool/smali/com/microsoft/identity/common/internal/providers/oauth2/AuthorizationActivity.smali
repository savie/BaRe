.class public Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;
.super Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field private mFragment:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;

.field private mOtelContext:Lt40;

.field private mSpanContext:Lrj7;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getFragment()Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->mFragment:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOtelContext()Lt40;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->mOtelContext:Lt40;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSpanContext()Lrj7;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->mSpanContext:Lrj7;

    .line 2
    .line 3
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    :try_start_0
    const-string v0, "serializable_span_context"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v1, Lcom/microsoft/identity/common/internal/util/CommonMoshiJsonAdapter;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/microsoft/identity/common/internal/util/CommonMoshiJsonAdapter;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/microsoft/identity/common/internal/util/CommonMoshiJsonAdapter;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lrj7;

    .line 38
    .line 39
    :goto_0
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->mSpanContext:Lrj7;

    .line 40
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Lcom/microsoft/identity/common/java/exception/TerminalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    const/16 v1, 0x21

    .line 44
    .line 45
    const-string v2, "otel_context_carrier"

    .line 46
    .line 47
    if-lt v0, v1, :cond_1

    .line 48
    .line 49
    :try_start_1
    const-class v0, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/util/HashMap;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    goto :goto_2

    .line 60
    :catch_1
    move-exception v0

    .line 61
    goto :goto_2

    .line 62
    :catch_2
    move-exception v0

    .line 63
    goto :goto_2

    .line 64
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ljava/util/HashMap;

    .line 69
    .line 70
    :goto_1
    invoke-static {v0}, Lcom/microsoft/identity/common/java/opentelemetry/TextMapPropagatorExtension;->extract(Ljava/util/HashMap;)Lt40;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->mOtelContext:Lt40;
    :try_end_1
    .catch Lcom/microsoft/identity/common/java/exception/TerminalException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v2, "Exception thrown during extraction: "

    .line 80
    .line 81
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    sget v2, Lcom/microsoft/identity/common/logging/Logger;->a:I

    .line 96
    .line 97
    const-string v2, "AuthorizationActivity:onCreate"

    .line 98
    .line 99
    invoke-static {v2, v1, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0}, Lcom/microsoft/identity/common/PropertyBagUtil;->getAuthorizationFragmentFromStartIntent(Landroid/content/Intent;)Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->mFragment:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;

    .line 111
    .line 112
    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;->setInstanceState(Landroid/os/Bundle;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationActivity;->mFragment:Lcom/microsoft/identity/common/internal/providers/oauth2/AuthorizationFragment;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/ui/DualScreenActivity;->setFragment(Landroidx/fragment/app/o;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method
