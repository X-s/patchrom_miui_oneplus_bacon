.class Lcom/android/settings_ex/notification/ZenModePrioritySettings$4;
.super Ljava/lang/Object;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Lcom/android/settings_ex/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModePrioritySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$4;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 8
    .param p1, "pos"    # I
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 113
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$4;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-static {v4}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->-get0(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v7

    .line 114
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 115
    .local v3, "val":I
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$4;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    iget-object v4, v4, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    const/16 v5, 0xaa

    invoke-static {v4, v5, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 116
    if-eq v3, v6, :cond_1

    const/4 v0, 0x1

    .line 117
    .local v0, "allowCalls":Z
    :goto_0
    if-ne v3, v6, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$4;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    iget-object v4, v4, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v4, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 118
    .local v1, "allowCallsFrom":I
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$4;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    iget-object v4, v4, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-ne v0, v4, :cond_3

    .line 119
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$4;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    iget-object v4, v4, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v4, v4, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-ne v1, v4, :cond_3

    .line 120
    return v7

    .line 116
    .end local v0    # "allowCalls":Z
    .end local v1    # "allowCallsFrom":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "allowCalls":Z
    goto :goto_0

    .line 117
    :cond_2
    move v1, v3

    .restart local v1    # "allowCallsFrom":I
    goto :goto_1

    .line 122
    :cond_3
    sget-boolean v4, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "ZenModeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPrefChange allowCalls="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 123
    const-string/jumbo v6, " allowCallsFrom="

    .line 122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 123
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v6

    .line 122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$4;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    iget-object v4, v4, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 125
    .local v2, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean v0, v2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 126
    iput v1, v2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 127
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$4;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-virtual {v4, v2}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v4

    return v4
.end method