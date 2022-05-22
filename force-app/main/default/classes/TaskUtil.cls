public class TaskUtil {
    public static String getTaskPriority(String leadState) {
        if (String.isBlank(leadState) || leadState.length() > 2) {
            return null;
        }
        String taskPriority;
        if (leadState == 'CA') {
            testPriority = 'High';
        } else {
            taskPriority = 'Normal';
        }
        return taskPriority;
    }
}